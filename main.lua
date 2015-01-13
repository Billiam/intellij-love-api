api = require('data.love_api')

local template = love.filesystem.read('doclua_base.lua')

local Content = {
  value = '',
  add = function(self, c, suppressNewline) 
    self.value = self.value .. c .. (suppressNewline and '' or '\n')
  end
}
Content.__index = Content

function Content.create()
  local instance = {}
  setmetatable(instance, Content)
  return instance
end

local function docModule(file, name, methodLists)
  local content = Content.create()
  local signatures = {}

  content:add(string.format('module(%q)', name))

  --iterate over multiple tables of methods
  for a, methods in ipairs(methodLists) do
    -- iterate over all methods in a table
    for i, f in ipairs(methods) do

      local arguments = {}
      local argumentNames = {}
      local argumentNameString = ''
      local argTypes = ''

      local usageReturns = {}
      local usagePrefix = ''

      --write initial description, splitting newlines and inserting continuation comments
      if f.description then
        local desc = f.description:gsub("\n+", "\n-- ")
        content:add(string.format("--- %s", desc))
      end

      -- get function arguments
      if f.functions[1].arguments then
        for j,a in ipairs(f.functions[1].arguments) do
          -- track the variable names of function arguments
          table.insert(argumentNames, a.name)
          -- format and insert function arguments with their types, in the format:
          -- {type} variableName
          table.insert(arguments, string.format("{%s} %s", a.type, a.name))

          -- add a @param luadoc comment in the format:
          -- @param variableName {type} Long parameter description
          content:add(string.format("-- @param %s {%s} %s", a.name, a.type, a.description))
        end
      end

      -- get method return values
      if f.functions[1].returns then
        for j,r in ipairs(f.functions[1].returns) do
          -- track return values and types so that they can be prefixed to example usages
          -- ex: {type} variableName, ... = myFunction()
          table.insert(usageReturns, string.format("{%s} %s", r.type, r.name))

          -- add a @return luadoc comment in the format:
          -- @return {type} Long return value description
          content:add(string.format("-- @return {%s} %s", r.type, r.description))
        end
      end

      -- concatenate 
      if #usageReturns > 0 then
        usagePrefix = table.concat(usageReturns, ', ') .. ' = '
      end

      if #argumentNames > 0 then
        argumentNameString = table.concat(argumentNames, ', ')
      end

      if #arguments > 0 then
        argTypes = table.concat(arguments, ', ')
      end

      -- store method signature for popup via doclua file, in the format:
      -- ["love.myMethod"] = [=[{type} myVariable, ... = love.myMethod({type} argumentName, ...)]]
      table.insert(signatures, string.format('["%s"] = [=[%s%s.%s(%s)]=]', name .. '.' .. f.name, usagePrefix, name, f.name, argTypes))

      -- define function in output lua file in the format
      -- function myFunction()
      content:add(string.format('function %s(%s) end\n', f.name, argumentNameString))

    end
  end

  -- replace <SIGNATURE_CONTENT> with concatenated signature values
  local signatureContent = template:gsub('<SIGNATURE_CONTENT>', table.concat(signatures, ',\n  '))

  love.filesystem.write(file..'.lua', content.value)
  love.filesystem.write(file..'.doclua', signatureContent)
end

-- write out love.lua file and all module files
docModule('love', 'love', {api.callbacks, api.functions})
for i, m in ipairs(api.modules) do
  docModule(m.name, 'love.'..m.name, {m.functions})
end

love.event.push('quit')
