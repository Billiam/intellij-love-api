module("love.image")
--- Determines whether a file can be loaded as CompressedData.
-- @param filename {string} The filename of the potentially compressed image file.
-- @return {boolean} Whether the file can be loaded as CompressedData or not.
function isCompressed(filename) end

--- Create a new CompressedData object from a compressed image file. LÖVE currently supports DDS files compressed with the DXT1, DXT5, and BC5 / 3Dc formats.
-- @param filename {string} The filename of the compressed image file.
-- @return {CompressedData} The new CompressedData object.
function newCompressedData(filename) end

--- Create a new ImageData object.
-- @param width {number} The width of the ImageData.
-- @param height {number} The height of the ImageData.
-- @return {ImageData} The new ImageData object.
function newImageData(width, height) end

