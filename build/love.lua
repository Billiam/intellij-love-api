module("love")
--- Callback function used to draw on the screen every frame.
function draw() end

--- The error handler, used to display error messages.
-- @param msg {string} The error message.
function errhand(msg) end

--- Callback function triggered when window receives or loses focus.
-- @param f {boolean} Window focus.
function focus(f) end

--- Called when a Joystick's virtual gamepad axis is moved.
-- @param joystick {Joystick} The joystick object.
-- @param axis {GamepadAxis} The virtual gamepad axis.
function gamepadaxis(joystick, axis) end

--- Called when a Joystick's virtual gamepad button is pressed.
-- @param joystick {Joystick} The joystick object.
-- @param button {GamepadButton} The virtual gamepad button.
function gamepadpressed(joystick, button) end

--- Called when a Joystick's virtual gamepad button is released.
-- @param joystick {Joystick} The joystick object.
-- @param button {GamepadButton} The virtual gamepad button.
function gamepadreleased(joystick, button) end

--- Called when a Joystick is connected.
-- This callback is also triggered after love.load for every Joystick which was already connected when the game started up.
-- @param joystick {Joystick} The newly connected Joystick object.
function joystickadded(joystick) end

--- Called when a joystick axis moves.
-- @param joystick {Joystick} The joystick object.
-- @param axis {number} The axis number.
-- @param value {number} The new axis value.
function joystickaxis(joystick, axis, value) end

--- Called when a joystick hat direction changes.
-- @param joystick {Joystick} The joystick object.
-- @param hat {number} The hat number.
-- @param direction {JoystickHat} The new hat direction.
function joystickhat(joystick, hat, direction) end

--- Called when a joystick button is pressed.
-- @param joystick {number} The joystick number.
-- @param button {number} The button number.
function joystickpressed(joystick, button) end

--- Called when a joystick button is released.
-- @param joystick {number} The joystick number.
-- @param button {number} The button number.
function joystickreleased(joystick, button) end

--- Called when a Joystick is disconnected.
-- @param joystick {Joystick} The now-disconnected Joystick object.
function joystickremoved(joystick) end

--- Callback function triggered when a key is pressed.
-- Key repeat needs to be enabled with love.keyboard.setKeyRepeat for repeat keypress events to be received.
-- @param key {KeyConstant} Character of the key pressed.
-- @param isrepeat {boolean} Whether this keypress event is a repeat. The delay between key repeats depends on the user's system settings.
function keypressed(key, isrepeat) end

--- Callback function triggered when a key is released.
-- @param key {KeyConstant} Character of the key released.
function keyreleased(key) end

--- This function is called exactly once at the beginning of the game.
-- @param arg {table} Command line arguments given to the game.
function load(arg) end

--- Callback function triggered when window receives or loses mouse focus.
-- @param f {boolean} Window mouse focus.
function mousefocus(f) end

--- Callback function triggered when a mouse button is pressed.
-- @param x {number} Mouse x position.
-- @param y {number} Mouse y position.
-- @param button {MouseConstant} Mouse button pressed.
function mousepressed(x, y, button) end

--- Callback function triggered when a mouse button is released.
-- @param x {number} Mouse x position.
-- @param y {number} Mouse y position.
-- @param button {MouseConstant} Mouse button released.
function mousereleased(x, y, button) end

--- Callback function triggered when the game is closed.
-- @return {boolean} Abort quitting. If true, do not close the game.
function quit() end

--- Called when the window is resized, for example if the user resizes the window, or if love.window.setMode is called with an unsupported width or height in fullscreen and the window chooses the closest appropriate size.
-- Calls to love.window.setMode will only trigger this event if the width or height of the window after the call doesn't match the requested width and height. This can happen if a fullscreen mode is requested which doesn't match any supported mode, or if the fullscreen type is 'desktop' and the requested width or height don't match the desktop resolution.
-- @param w {number} The new width.
-- @param h {number} The new height.
function resize(w, h) end

--- The main function, containing the main loop. A sensible default is used when left out.
function run() end

--- Called when text has been entered by the user. For example if shift-2 is pressed on an American keyboard layout, the text "@" will be generated.
-- @param text {string} The UTF-8 encoded unicode text.
function textinput(text) end

--- Callback function triggered when a Thread encounters an error.
-- @param thread {Thread} The thread which produced the error.
-- @param errorstr {string} The error message.
function threaderror(thread, errorstr) end

--- Callback function triggered when a key is pressed.
-- @param dt {number} Time since the last update in seconds.
function update(dt) end

--- Callback function triggered when window is minimized/hidden or unminimized by the user.
-- @param v {boolean} Window visibility.
function visible(v) end

--- Gets the current running version of LÖVE.
-- @return {number} The major version of LÖVE, e.g. 0 for version 0.9.1.
-- @return {number} The minor version of LÖVE, e.g. 9 for version 0.9.1.
-- @return {number} The revision version of LÖVE, e.g. 1 for version 0.9.1.
-- @return {string} The codename of the current version.
function getVersion() end

