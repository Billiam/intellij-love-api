module("love.filesystem")
--- Append data to an existing file.
-- @param name {string} The name (and path) of the file.
-- @param data {string} The data that should be written to the file
-- @param size {number} How many bytes to write.
-- @return {boolean} True if the operation was successful, or nil if there was an error.
-- @return {string} The error message on failure.
function append(name, data, size) end

--- Creates a directory.
-- @param name {string} The directory to create.
-- @return {boolean} True if the directory was created, false if not.
function createDirectory(name) end

--- Check whether a file or directory exists.
-- @param filename {string} The path to a potential file or directory.
-- @return {boolean} True if there is a file or directory with the specified name. False otherwise.
function exists(filename) end

--- Returns the application data directory (could be the same as getUserDirectory)
-- @return {string} The path of the application data directory.
function getAppdataDirectory() end

--- Returns a table with the names of files and subdirectories in the specified path. The table is not sorted in any way; the order is undefined.
-- If the path passed to the function exists in the game and the save directory, it will list the files and directories from both places.
-- @param dir {string} The directory.
-- @return {table} A sequence with the names of all files and subdirectories as strings.
function getDirectoryItems(dir) end

--- Gets the write directory name for your game. Note that this only returns the name of the folder to store your files in, not the full location.
-- @param name {string} The identity that is used as write directory.
function getIdentity(name) end

--- Gets the last modification time of a file.
-- @param filename {string} The path and name to a file.
-- @return {number} The last modification time in seconds since the unix epoch or nil on failure.
-- @return {string} The error message on failure.
function getLastModified(filename) end

--- Gets the full path to the designated save directory. This can be useful if you want to use the standard io library (or something else) to read or write in the save directory.
-- @return {string} The absolute path to the save directory.
function getSaveDirectory() end

--- Gets the size in bytes of a file.
-- @param filename {string} The path and name to a file.
-- @return {number} The size in bytes of the file, or nil on failure.
-- @return {string} The error message on failure.
function getSize(filename) end

--- Returns the path of the user's directory.
-- @return {string} The path of the user's directory.
function getUserDirectory() end

--- Gets the current working directory.
-- @return {string} The current working directory.
function getWorkingDirectory() end

--- Check whether something is a directory.
-- @param path {string} The path to a potential directory.
-- @return {boolean} True if there is a directory with the specified name. False otherwise.
function isDirectory(path) end

--- Check whether something is a file.
-- @param path {string} The path to a potential file.
-- @return {boolean} True if there is a file with the specified name. False otherwise.
function isFile(path) end

--- Gets whether the game is in fused mode or not.
-- If a game is in fused mode, its save directory will be directly in the Appdata directory instead of Appdata/LOVE/. The game will also be able to load C Lua dynamic libraries which are located in the save directory.
-- A game is in fused mode if the source .love has been fused to the executable (see Game Distribution), or if "--fused" has been given as a command-line argument when starting the game.
-- @return {boolean} True if the game is in fused mode, false otherwise.
function isFused() end

--- Iterate over the lines in a file.
-- @param name {string} The name (and path) of the file.
-- @return {function} A function that iterates over all the lines in the file.
function lines(name) end

--- Load a file (but not run it).
-- @param name {string} The name (and path) of the file.
-- @return {function} The loaded chunk.
function load(name) end

--- Creates a new File object. It needs to be opened before it can be accessed.
-- @param filename {string} The filename of the file to read.
-- @param mode {FileMode} The mode to open the file in.
-- @return {File} The new File object, or nil if an error occurred.
-- @return {string} The error string if an error occurred.
function newFile(filename, mode) end

--- Creates a new FileData object.
-- @param contents {string} The contents of the file.
-- @param name {string} The name of the file.
-- @param decoder {FileDecoder} The method to use when decoding the contents.
-- @return {FileData} Your new FileData.
function newFileData(contents, name, decoder) end

--- Read the contents of a file.
-- @param name {string} The name (and path) of the file.
-- @param bytes {number} How many bytes to read.
-- @return {string} The file contents.
-- @return {number} How many bytes have been read.
function read(name, bytes) end

--- Removes a file or directory.
-- @param name {string} The file or directory to remove.
-- @return {boolean} True if the file/directory was removed, false otherwise.
function remove(name) end

--- Sets the write directory for your game. Note that you can only set the name of the folder to store your files in, not the location.
-- @param name {string} The new identity that will be used as write directory.
-- @param searchorder {SearchOrder} Whether love.filesystem will look for files in the write directory before or after looking in the main game source.
function setIdentity(name, searchorder) end

--- Write data to a file.
-- If you are getting the error message "Could not set write directory", try setting the save directory. This is done either with love.filesystem.setIdentity or by setting the identity field in love.conf.
-- @param name {string} The name (and path) of the file.
-- @param data {string} The data that should be written to the file
-- @param size {number} How many bytes to write.
-- @return {boolean} If the operation was successful
function write(name, data, size) end

