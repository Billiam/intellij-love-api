module("love.window")
--- Gets the width and height of the window.
-- @return {number} The width of the window.
-- @return {number} The height of the window.
function getDimensions() end

--- Gets whether the window is fullscreen.
-- @return {boolean} True if the window is fullscreen, false otherwise.
-- @return {FullscreenType} The type of fullscreen mode used.
function getFullscreen() end

--- Gets a list of supported fullscreen modes.
-- @param display {number} The index of the display, if multiple monitors are available.
-- @return {table} A table of width/height pairs. (Note that this may not be in order.)
function getFullscreenModes(display) end

--- Gets the height of the window.
-- @return {number} The height of the window.
function getHeight() end

--- Gets the window icon.
-- @return {ImageData} The window icon imagedata, or nil of no icon has been set with love.window.setIcon.
function getIcon() end

--- Returns the current display mode.
-- @return {number} Display width.
-- @return {number} Display height.
-- @return {boolean} Fullscreen (true) or windowed (false).
-- @return {boolean} True if vertical sync is enabled or false if disabled.
-- @return {number} The number of FSAA samples.
function getMode() end

--- Gets the scale factor associated with the window. In Mac OS X with the window in a retina screen and the highdpi window flag enabled this will be 2.0, otherwise it will be 1.0.
-- The scale factor is used to display graphics at a size the user is expecting, rather than the size of the pixels. On retina displays with the highdpi window flag enabled, the pixels in the window are 2x smaller than the scale of the normal content on the screen, so love.window.getPixelScale will return 2.
-- The units of love.graphics.getWidth, love.graphics.getHeight, love.mouse.getPosition, and mouse events are always in terms of pixels.
-- @return {number} The pixel scale factor associated with the window.
function getPixelScale() end

--- Gets the width of the window.
-- @return {number} The width of the window.
function getWidth() end

--- Checks if the game window has keyboard focus.
-- @return {boolean} True if the window has the focus or false if not.
function hasFocus() end

--- Checks if the game window has mouse focus.
-- @return {boolean} True if the window has mouse focus or false if not.
function hasMouseFocus() end

--- Checks if the window has been created.
-- @return {boolean} True if the window has been created, false otherwise.
function isCreated() end

--- Checks if the game window is visible.
-- The window is considered visible if it's not minimized and the program isn't hidden.
-- @return {boolean} True if the window is visible or false if not.
function isVisible() end

--- Enters or exits fullscreen. The display to use when entering fullscreen is chosen based on which display the window is currently in, if multiple monitors are connected.
-- If fullscreen mode is entered and the window size doesn't match one of the monitor's display modes (in normal fullscreen mode) or the window size doesn't match the desktop size (in 'desktop' fullscreen mode), the window will be resized appropriately. The window will revert back to its original size again when fullscreen mode is exited using this function.
-- @param fullscreen {boolean} Whether to enter or exit fullscreen mode.
-- @return {boolean} True if successful, false otherwise.
function setFullscreen(fullscreen) end

--- Sets the window icon until the game is quit. Not all operating systems support very large icon images.
-- @param imagedata {ImageData} The window icon image.
-- @return {boolean} Whether the icon has been set successfully.
function setIcon(imagedata) end

--- Changes the display mode.
-- If width or height is 0, the width or height of the desktop will be used.
-- @param width {number} Display width.
-- @param height {number} Display height.
-- @param flags {table} The flags table.
-- @return {boolean} True if successful, false otherwise.
function setMode(width, height, flags) end

--- Sets the window title.
-- @param title {string} The new window title.
function setTitle(title) end

