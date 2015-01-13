module("love.math")
--- Converts a color from gamma-space (sRGB) to linear-space (RGB). This is useful when doing gamma-correct rendering using colors created based on what they look like on-screen.
-- Gamma-space sRGB has more precision in the lower end than linear RGB. Using this function to convert from sRGB to RGB can result in non-integer color values, which get truncated to integers and lose precision when used with other functions such as love.graphics.setColor.
-- @param r {number} The red channel of the sRGB color to convert.
-- @param g {number} The green channel of the sRGB color to convert.
-- @param b {number} The blue channel of the sRGB color to convert.
-- @return {number} The red channel of the converted color in linear RGB space.
-- @return {number} The green channel of the converted color in linear RGB space.
-- @return {number} The blue channel of the converted color in linear RGB space.
function gammaToLinear(r, g, b) end

--- Gets the seed of the random number generator.
-- The state is split into two numbers due to Lua's use of doubles for all number values - doubles can't accurately represent integer values above 2^53.
-- @return {number} Integer number representing the lower 32 bits of the random number generator's 64 bit state value.
-- @return {number} Integer number representing the higher 32 bits of the random number generator's 64 bit state value.
function getRandomSeed() end

--- Gets the current state of the random number generator. This returns an opaque implementation-dependent string which is only useful for later use with RandomGenerator:setState.
-- This is different from RandomGenerator:getSeed in that getState gets the RandomGenerator's current state, whereas getSeed gets the previously set seed number.
-- The value of the state string does not depend on the current operating system.
-- @return {string} The current state of the RandomGenerator object, represented as a string.
function getRandomState() end

--- Checks whether a polygon is convex.
-- PolygonShapes in love.physics, some forms of Mesh, and polygons drawn with love.graphics.polygon must be simple convex polygons.
-- @param vertices {table} The vertices of the polygon as a table in the form of {x1, y1, x2, y2, x3, y3, ...}.
-- @return {boolean} Whether the given polygon is convex.
function isConvex(vertices) end

--- Converts a color from linear-space (RGB) to gamma-space (sRGB). This is useful when storing linear RGB color values in an image, because the linear RGB color space has less precision than sRGB for dark colors, which can result in noticeable color banding when drawing.
-- In general, colors chosen based on what they look like on-screen are already in gamma-space and should not be double-converted. Colors calculated using math are often in the linear RGB space.
-- @param lr {number} The red channel of the linear RGB color to convert.
-- @param lg {number} The green channel of the linear RGB color to convert.
-- @param lb {number} The blue channel of the linear RGB color to convert.
-- @return {number} The red channel of the converted color in gamma sRGB space.
-- @return {number} The green channel of the converted color in gamma sRGB space.
-- @return {number} The blue channel of the converted color in gamma sRGB space.
function linearToGamma(lr, lg, lb) end

--- Creates a new BezierCurve object.
-- The number of vertices in the control polygon determines the degree of the curve, e.g. three vertices define a quadratic (degree 2) Bézier curve, four vertices define a cubic (degree 3) Bézier curve, etc.
-- @param vertices {table} The vertices of the control polygon as a table in the form of {x1, y1, x2, y2, x3, y3, ...}.
-- @return {BezierCurve} A Bézier curve object.
function newBezierCurve(vertices) end

--- Creates a new RandomGenerator object which is completely independent of other RandomGenerator objects and random functions.
-- @return {RandomGenerator} A Random Number Generator object.
function newRandomGenerator() end

--- Generates a Simplex noise value in 1-4 dimensions.
-- Simplex noise is closely related to Perlin noise. It is widely used for procedural content generation.
-- @param x {number} The number used to generate the noise value.
-- @return {number} The noise value in the range of [0, 1].
function noise(x) end

--- Generates a pseudo random number in a platform independent way.
-- @return {number} The pseudo random number.
function random() end

--- Get a normally distributed pseudo random number.
-- @param stddev {number} Standard deviation of the distribution.
-- @param mean {number} The mean of the distribution.
-- @return {number} Normally distributed random number with variance (stddev)² and the specified mean.
function randomNormal(stddev, mean) end

--- Sets the seed of the random number generator using the specified integer number.
-- @param seed {number} The integer number with which you want to seed the randomization. Must be within the range of [1, 2^53].
function setRandomSeed(seed) end

--- Gets the current state of the random number generator. This returns an opaque implementation-dependent string which is only useful for later use with RandomGenerator:setState.
-- This is different from RandomGenerator:getSeed in that getState gets the RandomGenerator's current state, whereas getSeed gets the previously set seed number.
-- The value of the state string does not depend on the current operating system.
-- @param state {string} The current state of the RandomGenerator object, represented as a string.
function setRandomState(state) end

--- Triangulate a simple polygon.
-- @param polygon {table} Polygon to triangulate. Must not intersect itself.
-- @return {table} List of triangles the polygon is composed of, in the form of {{x1, y1, x2, y2, x3, y3}, {x1, y1, x2, y2, x3, y3}, ...}.
function triangulate(polygon) end

