module("love.system")
--- Gets text from the clipboard.
-- @return {string} The text currently held in the system's clipboard.
function getClipboardText() end

--- Gets the current operating system. In general, LÖVE abstracts away the need to know the current operating system, but there are a few cases where it can be useful (especially in combination with os.execute.)
-- @return {string} The current operating system. "OS X", "Windows", or "Linux".
function getOS() end

--- Gets information about the system's power supply.
-- @return {PowerState} The basic state of the power supply.
-- @return {number} Percentage of battery life left, between 0 and 100. nil if the value can't be determined or there's no battery.
-- @return {number} Seconds of battery life left. nil if the value can't be determined or there's no battery.
function getPowerInfo() end

--- Gets the number of CPU cores in the system.
-- The number includes the threads reported if technologies such as Intel's Hyper-threading are enabled. For example, on a 4-core CPU with Hyper-threading, this function will return 8.
-- @return {number} Gets the number of CPU cores in the system.
function getProcessorCount() end

--- Opens a URL with the user's web or file browser.
-- @param url {string} The URL to open. Must be formatted as a proper URL.

To open a file or folder, "file://" must be prepended to the path.
-- @return {boolean} Whether the URL was opened successfully.
function openURL(url) end

--- Puts text in the clipboard.
-- @param text {string} The new text to hold in the system's clipboard.
function setClipboardText(text) end

