module("love.joystick")
--- Binds a virtual gamepad input to a button, axis or hat for all Joysticks of a certain type. For example, if this function is used with a GUID returned by a Dualshock 3 controller in OS X, the binding will affect Joystick:getGamepadAxis and Joystick:isGamepadDown for all Dualshock 3 controllers used with the game when run in OS X.
-- LÖVE includes built-in gamepad bindings for many common controllers. This function lets you change the bindings or add new ones for types of Joysticks which aren't recognized as gamepads by default.
-- The virtual gamepad buttons and axes are designed around the Xbox 360 controller layout.
-- @param guid {string} The OS-dependent GUID for the type of Joystick the binding will affect.
-- @param button {GamepadButton} The virtual gamepad button to bind.
-- @param inputtype {JoystickInputType} The type of input to bind the virtual gamepad button to.
-- @param inputindex {number} The index of the axis, button, or hat to bind the virtual gamepad button to.
-- @param hatdirection {JoystickHat} The direction of the hat, if the virtual gamepad button will be bound to a hat. nil otherwise.
-- @return {boolean} Whether the virtual gamepad button was successfully bound.
function setGamepadMapping(guid, button, inputtype, inputindex, hatdirection) end

--- Gets the number of connected joysticks.
-- @return {number} The number of connected joysticks.
function getJoystickCount() end

--- Gets a list of connected Joysticks.
-- @return {table} The list of currently connected Joysticks.
function getJoysticks() end

