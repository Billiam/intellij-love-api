module("love.audio")
--- Returns the distance attenuation model.
-- @return {DistanceModel} The current distance model.
function getDistanceModel() end

--- Returns the number of sources which are currently playing or paused.
-- @return {number} The number of sources which are currently playing or paused.
function getSourceCount() end

--- Returns the orientation of the listener.
-- @return {number} The X component of the forward vector of the listener orientation.
-- @return {number} The Y component of the forward vector of the listener orientation.
-- @return {number} The Z component of the forward vector of the listener orientation.
-- @return {number} The X component of the up vector of the listener orientation.
-- @return {number} The Y component of the up vector of the listener orientation.
-- @return {number} The Z component of the up vector of the listener orientation.
function getOrientation() end

--- Returns the position of the listener.
-- @return {number} The X position of the listener.
-- @return {number} The Y position of the listener.
-- @return {number} The Z position of the listener.
function getPosition() end

--- Returns the velocity of the listener.
-- @return {number} The X velocity of the listener.
-- @return {number} The Y velocity of the listener.
-- @return {number} The Z velocity of the listener.
function getVelocity() end

--- Returns the master volume.
-- @return {number} The current master volume.
function getVolume() end

--- Creates a new Source from a file or SoundData. Sources created from SoundData are always static.
-- @param filename {string} The filepath to create a Source from.
-- @param type {SourceType} Streaming or static source.
-- @return {Source} A new Source that can play the specified audio.
function newSource(filename, type) end

--- Pauses all audio
function pause() end

--- Plays the specified Source.
-- @param source {Source} The Source to play.
function play(source) end

--- Resumes all audio
function resume() end

--- Rewinds all playing audio.
function rewind() end

--- Sets the distance attenuation model.
-- @param model {DistanceModel} The new distance model.
function setDistanceModel(model) end

--- Sets the orientation of the listener.
-- @param fx {number} The X component of the forward vector of the listener orientation.
-- @param fy {number} The Y component of the forward vector of the listener orientation.
-- @param fz {number} The Z component of the forward vector of the listener orientation.
-- @param ux {number} The X component of the up vector of the listener orientation.
-- @param uy {number} The Y component of the up vector of the listener orientation.
-- @param uz {number} The Z component of the up vector of the listener orientation.
function setOrientation(fx, fy, fz, ux, uy, uz) end

--- Sets the position of the listener, which determines how sounds play.
-- @param x {number} The X position of the listener.
-- @param y {number} The Y position of the listener.
-- @param z {number} The Z position of the listener.
function setPosition(x, y, z) end

--- Sets the velocity of the listener.
-- @param x {number} The X velocity of the listener.
-- @param y {number} The Y velocity of the listener.
-- @param z {number} The Z velocity of the listener.
function setVelocity(x, y, z) end

--- Sets the master volume.
-- @param volume {number} 1.0f is max and 0.0f is off.
function setVolume(volume) end

--- Stops all playing audio.
function stop() end

