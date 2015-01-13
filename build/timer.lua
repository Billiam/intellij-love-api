module("love.timer")
--- Returns the average delta time (seconds per frame) over the last second.
-- @return {number} The average delta time over the last second.
function getAverageDelta() end

--- Returns the time between the last two frames.
-- @return {number} The time passed (in seconds).
function getDelta() end

--- Returns the current frames per second.
-- @return {number} The current FPS.
function getFPS() end

--- Returns the value of a timer with an unspecified starting time. This function should only be used to calculate differences between points in time, as the starting time of the timer is unknown.
-- @return {number} The time in seconds.
function getTime() end

--- Sleeps the program for the specified amount of time.
-- @param s {number} Seconds to sleep for.
function sleep(s) end

--- Measures the time between two frames. Calling this changes the return value of love.timer.getDelta.
function step() end

