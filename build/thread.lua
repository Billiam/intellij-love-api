module("love.thread")
--- Creates or retrieves a named thread channel.
-- @param name {string} The name of the channel you want to create or retrieve.
-- @return {Channel} A named channel object which can be further manipulated.
function getChannel(name) end

--- Create a new unnamed thread channel.
-- One use for them is to pass new unnamed channels to other threads via Channel:push
-- @return {Channel} A unnamed channel object which can be further manipulated.
function newChannel() end

--- Creates a new Thread from a File or Data object.
-- @param name {string} The name of the thread.
-- @param filename {string} The name of the File to use as source.
-- @return {Thread} A new Thread that has yet to be started.
function newThread(name, filename) end

