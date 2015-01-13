module("love.physics")
--- Returns the two closest points between two fixtures and their distance.
-- @param fixture1 {Fixture} The first fixture.
-- @param fixture2 {Fixture} The second fixture.
-- @return {number} The distance of the two points.
-- @return {number} The x-coordinate of the first point.
-- @return {number} The y-coordinate of the first point.
-- @return {number} The x-coordinate of the second point.
-- @return {number} The y-coordinate of the second point.
function getDistance(fixture1, fixture2) end

--- Get the scale of the world.
-- The world scale is the number of pixels per meter. Try to keep your shape sizes less than 10 times this scale.
-- This is important because the physics in Box2D is tuned to work well for objects of size 0.1m up to 10m. All physics coordinates are divided by this number for the physics calculations.
-- @return {number} The size of 1 meter in pixels.
function getMeter() end

--- Creates a new body.
-- There are three types of bodies. Static bodies do not move, have a infinite mass, and can be used for level boundaries. Dynamic bodies are the main actors in the simulation, they collide with everything. Kinematic bodies do not react to forces and only collide with dynamic bodies.
-- The mass of the body gets calculated when a Fixture is attached or removed, but can be changed at any time with Body:setMass or Body:resetMassData.
-- @param world {World} The world to create the body in.
-- @param x {number} The x position of the body.
-- @param y {number} The y position of the body.
-- @param type {BodyType} The type of the body.
-- @return {Body} A new body.
function newBody(world, x, y, type) end

--- Creates a chain shape.
-- @param loop {boolean} If the chain should loop back to the first point.
-- @param x1 {number} The x position of the first point.
-- @param y1 {number} The y position of the first point.
-- @param x2 {number} The x position of the second point.
-- @param y2 {number} The y position of the second point.
-- @return {ChainShape} The new shape.
function newChainShape(loop, x1, y1, x2, y2) end

--- Create a new CircleShape at (x,y) in local coordinates.
-- Anchors from the center of the shape by default.
-- @param body {Body} The body to attach the shape to.
-- @param x {number} The x offset of the circle.
-- @param y {number} The y offset of the circle.
-- @param radius {number} The radius of the circle.
-- @return {CircleShape} A new CircleShape.
function newCircleShape(body, x, y, radius) end

--- Create a distance joint between two bodies.
-- This joint constrains the distance between two points on two bodies to be constant. These two points are specified in world coordinates and the two bodies are assumed to be in place when this joint is created. The first anchor point is connected to the first body and the second to the second body, and the points define the length of the distance joint.
-- @param body1 {Body} The first body to attach to the joint.
-- @param body2 {Body} The second body to attach to the joint.
-- @param x1 {number} The x position of the first anchor point.
-- @param y1 {number} The y position of the first anchor point.
-- @param x2 {number} The x position of the second anchor point.
-- @param y2 {number} The y position of the second anchor point.
-- @param collideConnected {boolean} Specifies whether the two bodies should collide with each other.
-- @return {DistanceJoint} The new distance joint.
function newDistanceJoint(body1, body2, x1, y1, x2, y2, collideConnected) end

--- Creates a edge shape.
-- @param x1 {number} The x position of the first point.
-- @param y1 {number} The y position of the first point.
-- @param x2 {number} The x position of the second point.
-- @param y2 {number} The y position of the second point.
-- @return {EdgeShape} The new shape.
function newEdgeShape(x1, y1, x2, y2) end

--- Creates and attaches a Fixture to a body.
-- @param body {Body} The body which gets the fixture attached.
-- @param shape {Shape} The shape of the fixture.
-- @param density {number} The density of the fixture.
-- @return {Fixture} The new fixture.
function newFixture(body, shape, density) end

--- Create a friction joint between two bodies. A FrictionJoint applies friction to a body.
-- @param body1 {Body} The first body to attach to the joint.
-- @param body2 {Body} The second body to attach to the joint.
-- @param x {number} The x position of the anchor point.
-- @param y {number} The y position of the anchor point.
-- @param collideConnected {boolean} Specifies whether the two bodies should collide with eachother.
-- @return {FrictionJoint} The new FrictionJoint.
function newFrictionJoint(body1, body2, x, y, collideConnected) end

--- Create a gear joint connecting two joints.
-- The gear joint connects two joints that must be either prismatic or revolute joints. Using this joint requires that the joints it uses connect their respective bodies to the ground and have the ground as the first body. When destroying the bodies and joints you must make sure you destroy the gear joint before the other joints.
-- The gear joint has a ratio the determines how the angular or distance values of the connected joints relate to each other. The formula coordinate1 + ratio * coordinate2 always has a constant value that is set when the gear joint is created.
-- @param joint1 {Joint} The first joint to connect with a gear joint.
-- @param joint2 {Joint} The second joint to connect with a gear joint.
-- @param ratio {number} The gear ratio.
-- @param collideConnected {boolean} Specifies whether the two bodies should collide with each other.
-- @return {Joint} The new gear joint.
function newGearJoint(joint1, joint2, ratio, collideConnected) end

--- Create a joint between a body and the mouse.
-- This joint actually connects the body to a fixed point in the world. To make it follow the mouse, the fixed point must be updated every timestep (example below).
-- The advantage of using a MouseJoint instead of just changing a body position directly is that collisions and reactions to other joints are handled by the physics engine.
-- @param body {Body} The body to attach to the mouse.
-- @param x {number} The x position of the connecting point.
-- @param y {number} The y position of the connecting point.
-- @return {Joint} The new mouse joint.
function newMouseJoint(body, x, y) end

--- Creates a new PolygonShape.
-- This shape can have 8 vertices at most, and must form a convex shape.
-- @param body {Body} The body to attach the shape to.
-- @param ... {number} Vertices of the polygon.
-- @return {PolygonShape} A new PolygonShape.
function newPolygonShape(body, ...) end

--- Create a prismatic joints between two bodies.
-- A prismatic joint constrains two bodies to move relatively to each other on a specified axis. It does not allow for relative rotation. Its definition and operation are similar to a revolute joint, but with translation and force substituted for angle and torque.
-- @param body1 {Body} The first body to connect with a prismatic joint.
-- @param body2 {Body} The second body to connect with a prismatic joint.
-- @param x {number} The x coordinate of the anchor point.
-- @param y {number} The y coordinate of the anchor point.
-- @param ax {number} The x coordinate of the axis vector.
-- @param ay {number} The y coordinate of the axis vector.
-- @param collideConnected {boolean} Specifies whether the two bodies should collide with each other.
-- @return {PrismaticJoint} The new prismatic joint.
function newPrismaticJoint(body1, body2, x, y, ax, ay, collideConnected) end

--- Create a pulley joint to join two bodies to each other and the ground.
-- The pulley joint simulates a pulley with an optional block and tackle. If the ratio parameter has a value different from one, then the simulated rope extends faster on one side than the other. In a pulley joint the total length of the simulated rope is the constant length1 + ratio * length2, which is set when the pulley joint is created.
-- Pulley joints can behave unpredictably if one side is fully extended. It is recommended that the method setMaxLengths  be used to constrain the maximum lengths each side can attain.
-- @param body1 {Body} The first body to connect with a pulley joint.
-- @param body2 {Body} The second body to connect with a pulley joint.
-- @param gx1 {number} The x coordinate of the first body's ground anchor.
-- @param gy1 {number} The y coordinate of the first body's ground anchor.
-- @param gx2 {number} The x coordinate of the second body's ground anchor.
-- @param gy2 {number} The y coordinate of the second body's ground anchor.
-- @param x1 {number} The x coordinate of the pulley joint anchor in the first body.
-- @param y1 {number} The y coordinate of the pulley joint anchor in the first body.
-- @param x2 {number} The x coordinate of the pulley joint anchor in the second body.
-- @param y2 {number} The y coordinate of the pulley joint anchor in the second body.
-- @param ratio {number} The joint ratio.
-- @param collideConnected {boolean} Specifies whether the two bodies should collide with each other.
-- @return {Joint} The new pulley joint.
function newPulleyJoint(body1, body2, gx1, gy1, gx2, gy2, x1, y1, x2, y2, ratio, collideConnected) end

--- Shorthand for creating rectangluar PolygonShapes.
-- The rectangle will be created at (x,y) in local coordinates.
-- Anchors from the center of the shape by default.
-- @param body {Body} The Body to attach the Shape to.
-- @param x {number} The offset along the x-axis.
-- @param y {number} The offset along the y-axis.
-- @param width {number} The width of the rectangle.
-- @param height {number} The height of the rectangle.
-- @param angle {number} The initial angle of the rectangle.
-- @return {PolygonShape} A new PolygonShape.
function newRectangleShape(body, x, y, width, height, angle) end

--- Creates a pivot joint between two bodies.
-- This joint connects two bodies to a point around which they can pivot.
-- @param body1 {Body} The first body to connect with a Revolute Joint.
-- @param body2 {Body} The second body to connect with a Revolute Joint.
-- @param x {number} The x position of the connecting point.
-- @param y {number} The y position of the connecting point.
-- @param collideConnected {number} Specifies whether the two bodies should collide with each other.
-- @return {Joint} The new revolute joint.
function newRevoluteJoint(body1, body2, x, y, collideConnected) end

--- Create a joint between two bodies. Its only function is enforcing a max distance between these bodies.
-- @param body1 {Body} The first body to attach to the joint.
-- @param body2 {Body} The second body to attach to the joint.
-- @param x1 {number} The x position of the first anchor point.
-- @param y1 {number} The y position of the first anchor point.
-- @param x2 {number} The x position of the second anchor point.
-- @param y2 {number} The y position of the second anchor point.
-- @param maxLength {number} The maximum distance for the bodies.
-- @param collideConnected {boolean} Specifies whether the two bodies should collide with each other.
-- @return {RopeJoint} The new RopeJoint.
function newRopeJoint(body1, body2, x1, y1, x2, y2, maxLength, collideConnected) end

--- Create a friction joint between two bodies. A WeldJoint essentially glues two bodies together.
-- @param body1 {Body} The first body to attach to the joint.
-- @param body2 {Body} The second body to attach to the joint.
-- @param x {number} The x position of the anchor point.
-- @param y {number} The y position of the anchor point.
-- @param collideConnected {boolean} Specifies whether the two bodies should collide with each other.
-- @return {WeldJoint} The new WeldJoint.
function newWeldJoint(body1, body2, x, y, collideConnected) end

--- Creates a wheel joint.
-- @param body1 {Body} The first body.
-- @param body2 {Body} The second body.
-- @param x {number} The x position of the anchor point.
-- @param y {number} The y position of the anchor point.
-- @param ax {number} The x position of the axis unit vector.
-- @param ay {number} The y position of the axis unit vector.
-- @param collideConnected {boolean} Specifies whether the two bodies should collide with each other.
-- @return {WheelJoint} The new WheelJoint.
function newWheelJoint(body1, body2, x, y, ax, ay, collideConnected) end

--- Creates a new World.
-- @param xg {number} The x component of gravity.
-- @param yg {number} The y component of gravity.
-- @param sleep {boolean} Whether the bodies in this world are allowed to sleep.
-- @return {World} A brave new World.
function newWorld(xg, yg, sleep) end

--- Sets the pixels to meter scale factor.
-- All coordinates in the physics module are divided by this number and converted to meters, and it creates a convenient way to draw the objects directly to the screen without the need for graphics transformations.
-- It is recommended to create shapes no larger than 10 times the scale. This is important because Box2D is tuned to work well with shape sizes from 0.1 to 10 meters.
-- love.physics.setMeter does not apply retroactively to created objects. Created objects retain their meter coordinates but the scale factor will affect their pixel coordinates.
-- @param scale {number} The scale factor as an integer.
function setMeter(scale) end

