module("love.keyboard")
--- Gets whether key repeat is enabled.
-- @return {boolean} Whether key repeat is enabled.
function hasKeyRepeat() end

--- Gets whether text input events are enabled.
-- @return {boolean} Whether text input events are enabled.
function hasTextInput() end

--- Checks whether a certain key is down. Not to be confused with love.keypressed or love.keyreleased.
-- @param key {KeyConstant} The key to check.
-- @return {boolean} True if the key is down, false if not.
function isDown(key) end

--- Enables or disables key repeat. It is disabled by default.
-- The interval between repeats depends on the user's system settings.
-- @param enable {boolean} Whether repeat keypress events should be enabled when a key is held down.
function setKeyRepeat(enable) end

--- Enables or disables text input events. It is enabled by default.
-- @param enable {boolean} Whether text input events should be enabled.
function setTextInput(enable) end

