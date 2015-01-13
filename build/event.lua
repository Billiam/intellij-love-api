module("love.event")
--- Clears the event queue.
function clear() end

--- Returns an iterator for messages in the event queue.
-- @return {function} Iterator function usable in a for loop.
function poll() end

--- Pump events into the event queue. This is a low-level function, and is usually not called by the user, but by love.run. Note that this does need to be called for any OS to think you're still running, and if you want to handle OS-generated events at all (think callbacks). love.event.pump can only be called from the main thread, but afterwards, the rest of love.event can be used from any other thread.
function pump() end

--- Adds an event to the event queue.
-- @param e {Event} The name of the event.
-- @param a {mixed} First event argument.
-- @param b {mixed} Second event argument.
-- @param c {mixed} Third event argument.
-- @param d {mixed} Fourth event argument.
function push(e, a, b, c, d) end

--- Adds the quit event to the queue.
-- The quit event is a signal for the event handler to close LÖVE. It's possible to abort the exit process with the love.quit callback.
function quit() end

--- Like love.event.poll but blocks until there is an event in the queue.
-- @return {Event} The type of event.
-- @return {mixed} First event argument.
-- @return {mixed} Second event argument.
-- @return {mixed} Third event argument.
-- @return {mixed} Fourth event argument.
function wait() end

