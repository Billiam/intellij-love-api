module("love.sound")
--- Creates new SoundData from a file. It's also possible to create SoundData with a custom sample rate, channel and bit depth.
-- The sound data will be decoded to the memory in a raw format. It is recommended to create only short sounds like effects, as a 3 minute song uses 30 MB of memory this way.
-- @param filename {string} The filename of the file to load.
-- @return {SoundData} A new SoundData object.
function newSoundData(filename) end

