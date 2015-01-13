module("love.mouse")
--- Gets the current Cursor.
-- @return {Cursor} The current cursor, or nil if no cursor is set.
function getCursor() end

--- Returns the current position of the mouse.
-- @return {number} The position of the mouse along the x-axis.
-- @return {number} The position of the mouse along the y-axis.
function getPosition() end

--- Gets a Cursor object representing a system-native hardware cursor.
--  Hardware cursors are framerate-independent and work the same way as normal operating system cursors. Unlike drawing an image at the mouse's current coordinates, hardware cursors never have visible lag between when the mouse is moved and when the cursor position updates, even at low framerates.
-- @param ctype {CursorType} The type of system cursor to get.
-- @return {Cursor} The Cursor object representing the system cursor type.
function getSystemCursor(ctype) end

--- Returns the current x position of the mouse.
-- @return {number} The position of the mouse along the x-axis.
function getX() end

--- Returns the current y position of the mouse.
-- @return {number} The position of the mouse along the y-axis.
function getY() end

--- Checks whether a certain mouse button is down. This function does not detect mousewheel scrolling; you must use the love.mousepressed callback for that.
-- @param button {MouseConstant} The button to check.
-- @return {boolean} True if the specified button is down.
function isDown(button) end

--- Checks if the mouse is grabbed.
-- @return {boolean} True if the cursor is grabbed, false if it is not.
function isGrabbed() end

--- Checks if the cursor is visible.
-- @return {boolean} True if the cursor to visible, false if the cursor is hidden.
function isVisible() end

--- Creates a new hardware Cursor object from an image file or ImageData.
-- Hardware cursors are framerate-independent and work the same way as normal operating system cursors. Unlike drawing an image at the mouse's current coordinates, hardware cursors never have visible lag between when the mouse is moved and when the cursor position updates, even at low frameratesn
-- The hot spot is the point the operating system uses to determine what was clicked and at what position the mouse cursor is. For example, the normal arrow pointer normally has its hot spot at the top left of the image, but a crosshair cursor might have it in the middle.
-- @param imageData {ImageData} The ImageData to use for the the new Cursor.
-- @param hotx {number} The x-coordinate in the ImageData of the cursor's hot spot.
-- @param hoty {number} The y-coordinate in the ImageData of the cursor's hot spot.
-- @return {Cursor} The new Cursor object.
function newCursor(imageData, hotx, hoty) end

--- Sets the current mouse cursor.
-- Resets the current mouse cursor to the default when called without arguments.
function setCursor() end

--- Grabs the mouse and confines it to the window.
-- @param grab {boolean} True to confine the mouse, false to let it leave the window.
function setGrabbed(grab) end

--- Sets the position of the mouse.
-- @param x {number} The new position of the mouse along the x-axis.
-- @param y {number} The new position of the mouse along the y-axis.
function setPosition(x, y) end

--- Sets the visibility of the cursor.
-- @param visible {boolean} True to set the cursor to visible, false to hide the cursor.
function setVisible(visible) end

--- Sets the current X position of the mouse.
-- @param x {number} The new position of the mouse along the x-axis.
function setX(x) end

--- Sets the current Y position of the mouse.
-- @param y {number} The new position of the mouse along the y-axis.
function setY(y) end

