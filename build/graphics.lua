module("love.graphics")
--- Draws an arc.
-- @param mode {DrawMode} How to draw the arc.
-- @param x {number} The position of the center along x-axis.
-- @param y {number} The position of the center along y-axis.
-- @param radius {number} Radius of the arc.
-- @param angle1 {number} The angle at which the arc begins.
-- @param angle2 {number} The angle at which the arc terminates.
-- @param segments {number} The number of segments used for drawing the arc.
function arc(mode, x, y, radius, angle1, angle2, segments) end

--- Draws a circle.
-- @param mode {DrawMode} How to draw the circle.
-- @param x {number} The position of the center along x-axis.
-- @param y {number} The position of the center along y-axis.
-- @param radius {number} The radius of the circle.
-- @param segments {number} The number of segments used for drawing the circle.
function circle(mode, x, y, radius, segments) end

--- Clears the screen to background color and restores the default coordinate system.
-- This function is called automatically before love.draw in the default love.run function. See the example in love.run for a typical use of this function.
-- Note that the scissor area bounds the cleared region.
function clear() end

--- Draws objects on screen. Drawable objects are loaded images, but may be other kinds of Drawable objects, such as a ParticleSystem.
-- In addition to simple drawing, this function can rotate and scale the object at the same time, as well as offset the image (for example, to center the image at the chosen coordinates).
-- love.graphics.draw anchors from the top left corner by default.
-- You can specify a negative value for sx or sy to flip the drawable horizontally or vertically.
-- The pivotal point is (x, y) on the screen and (ox, oy) in the internal coordinate system of the drawable object, before rotation and scaling. The object is scaled by (sx, sy), then rotated by r around the pivotal point.
-- The origin offset values are most often used to shift the images up and left by half of its height and width, so that (effectively) the specified x and y coordinates are where the center of the image will end up.
-- @param drawable {Drawable} A drawable object.
-- @param x {number} The position to draw the object (x-axis).
-- @param y {number} The position to draw the object (y-axis).
-- @param r {number} Orientation (radians).
-- @param sx {number} Scale factor (x-axis). Can be negative.
-- @param sy {number} Scale factor (y-axis). Can be negative.
-- @param ox {number} Origin offset (x-axis). (A value of 20 would effectively move your drawable object 20 pixels to the left.)
-- @param oy {number} Origin offset (y-axis). (A value of 20 would effectively move your drawable object 20 pixels up.)
-- @param kx {number} Shearing factor (x-axis).
-- @param ky {number} Shearing factor (y-axis).
function draw(drawable, x, y, r, sx, sy, ox, oy, kx, ky) end

--- Gets the current background color.
-- @return {number} The red component (0-255).
-- @return {number} The green component (0-255).
-- @return {number} The blue component (0-255).
-- @return {number} The alpha component (0-255).
function getBackgroundColor() end

--- Gets the blending mode.
-- @return {BlendMode} The current blend mode.
function getBlendMode() end

--- Gets the current target Canvas.
-- @return {Canvas} The Canvas set by setCanvas. Returns nil if drawing to the real screen.
function getCanvas() end

--- Gets the current color.
-- @return {number} The red component (0-255).
-- @return {number} The red component (0-255).
-- @return {number} The blue component (0-255).
-- @return {number} The alpha component (0-255).
function getColor() end

--- Gets the active color components used when drawing. Normally all 4 components are active unless love.graphics.setColorMask has been used.
-- The color mask determines whether individual components of the colors of drawn objects will affect the color of the screen. They affect love.graphics.clear and Canvas:clear as well.
-- @return {boolean} Whether the red color component is active when rendering.
-- @return {boolean} Whether the green color component is active when rendering.
-- @return {boolean} Whether the blue color component is active when rendering.
-- @return {boolean} Whether the alpha color component is active when rendering.
function getColorMask() end

--- Returns the default scaling filters used with Images, Canvases, and Fonts.
-- @return {FilterMode} Filter mode used when scaling the image down.
-- @return {FilterMode} Filter mode used when scaling the image up.
-- @return {number} Maximum amount of Anisotropic Filtering used.
function getDefaultFilter() end

--- Gets the width and height of the window.
-- @return {number} The width of the window.
-- @return {number} The height of the window.
function getDimensions() end

--- Gets the number of antialiasing samples used when drawing to the Canvas.
-- This may be different than the number used as an argument to love.graphics.newCanvas if the system running LÖVE doesn't support that number.
-- @return {number} The number of antialiasing samples used by the canvas when drawing to it.
function getFSAA() end

--- Gets the current Font object.
-- @return {Font} The current Font, or nil if none is set.
function getFont() end

--- Gets the height of the window.
-- @return {number} The height of the window.
function getHeight() end

--- Gets the line join style.
-- @return {LineJoin} The LineJoin style.
function getLineJoin() end

--- Gets the line style.
-- @return {LineStyle} The current line style.
function getLineStyle() end

--- Gets the current line width.
-- @return {number} The current line width.
function getLineWidth() end

--- Gets a list of supported fullscreen modes.
-- @return {table} A table of width/height pairs. (Note that this may not be in order.)
function getFullscreenModes() end

--- Returns the current Shader. Returns nil if none is set.
-- @return {Shader} The current Shader.
function getShader() end

--- Gets the system-dependent maximum value for a love.graphics feature.
-- @param limittype {GraphicsLimit} The graphics feature to get the maximum value of.
-- @return {number} The system-dependent max value for the feature.
function getSystemLimit(limittype) end

--- Gets the point size.
-- @return {number} The current point size.
function getPointSize() end

--- Gets the current point style.
-- @return {PointStyle} The current point style.
function getPointStyle() end

--- Gets information about the system's video card and drivers.
-- @return {string} The name of the renderer, e.g. "OpenGL".
-- @return {string} The version of the renderer with some extra driver-dependent version info, e.g. "2.1 INTEL-8.10.44".
-- @return {string} The name of the graphics card vendor, e.g. "Intel Inc."
-- @return {string} The name of the graphics card, e.g. "Intel HD Graphics 3000 OpenGL Engine".
function getRendererInfo() end

--- Gets the current scissor box.
-- @return {number} The x component of the top-left point of the box.
-- @return {number} The y component of the top-left point of the box.
-- @return {number} The width of the box.
-- @return {number} The height of the box.
function getScissor() end

--- Gets the width of the window.
-- @return {number} The width of the window.
function getWidth() end

--- Checks if certain graphics functions can be used.
-- Older and low-end systems do not always support all graphics extensions.
-- @param supportN {GraphicsFeature} The graphics feature to check for.
-- @return {boolean} True if everything is supported, false otherwise.
function isSupported(supportN) end

--- Gets whether wireframe mode is used when drawing.
-- @return {boolean} True if wireframe lines are used when drawing, false if it's not.
function isWireframe() end

--- Draws lines between points.
-- @param x1 {number} The position of first point on the x-axis.
-- @param y1 {number} The position of first point on the y-axis.
-- @param x2 {number} The position of second point on the x-axis.
-- @param y2 {number} The position of second point on the y-axis.
-- @param ... {number} You can continue passing point positions to draw a polyline.
function line(x1, y1, x2, y2, ...) end

--- Creates a new Canvas object for offscreen rendering.
-- Antialiased Canvases have slightly higher system requirements than normal Canvases. Additionally, the supported maximum number of FSAA samples varies depending on the system. Use love.graphics.getSystemLimit to check.
-- If the number of FSAA samples specified is greater than the maximum supported by the system, the Canvas will still be created but only using the maximum supported amount (this includes 0.)
-- @param width {number} The width of the Canvas.
-- @param height {number} The height of the Canvas.
-- @param texture_type {TextureFormat} The desired texture mode of the Canvas.
-- @param fsaa {number} The desired number of antialiasing samples used when drawing to the Canvas.
-- @return {Canvas} A new Canvas object.
function newCanvas(width, height, texture_type, fsaa) end

--- Creates a new Font.
-- @param filename {string} The filepath to the font file.
-- @param size {number} The size of the font in pixels.
-- @return {Font} A Font object which can be used to draw text on screen.
function newFont(filename, size) end

--- Creates a new Mesh.
-- @param vertices {table} The table filled with vertex information tables.
-- @param texture {Texture} The Image or Canvas to use when drawing the Mesh. May be nil to use no texture.
-- @param mode {MeshDrawMode} How the vertices are used when drawing. The default mode "fan" is sufficient for simple convex polygons.
-- @return {Mesh} The new Mesh.
function newMesh(vertices, texture, mode) end

--- Creates a new Image.
-- @param filename {string} The filepath to the image file.
-- @param format {TextureFormat} The format to interpret the image's data as.
-- @return {Image} An Image object which can be drawn on screen.
function newImage(filename, format) end

--- Creates a new font by loading a specifically formatted image. There can be up to 256 glyphs.
-- Expects ISO 8859-1 encoding for the glyphs string.
-- @param filename {string} The filepath to the image file.
-- @param glyphs {string} A string of the characters in the image in order from left to right.
-- @return {Font} A Font object which can be used to draw text on screen.
function newImageFont(filename, glyphs) end

--- Creates a new ParticleSystem.
-- @param texture {Texture} The Image or Canvas to use.
-- @param buffer {number} The max number of particles at the same time.
-- @return {ParticleSystem} A new ParticleSystem.
function newParticleSystem(texture, buffer) end

--- Creates a new Shader object for hardware-accelerated vertex and pixel effects. A Shader contains either vertex shader code, pixel shader code, or both.
-- Vertex shader code must contain at least one function, named position, which is the function that will produce transformed vertex positions of drawn objects in screen-space.
-- Pixel shader code must contain at least one function, named effect, which is the function that will produce the color which is blended onto the screen for each pixel a drawn object touches.
-- @param code {string} The pixel shader or vertex shader code, or a filename pointing to a file with the code.
-- @return {Shader} A Shader object for use in drawing operations.
function newShader(code) end

--- Creates a new Quad.
-- The purpose of a Quad is to describe the result of the following transformation on any drawable object. The object is first scaled to dimensions sw * sh. The Quad then describes the rectangular area of dimensions width * height whose upper left corner is at position (x, y) inside the scaled object.
-- @param x {number} The top-left position along the x-axis.
-- @param y {number} The top-left position along the y-axis.
-- @param width {number} The width of the Quad.
-- @param height {number} The height of the Quad.
-- @param sw {number} The reference width, the width of the Image.
-- @param sh {number} The reference height, the height of the Image.
-- @return {Quad} The new Quad.
function newQuad(x, y, width, height, sw, sh) end

--- Creates a screenshot and returns the image data.
-- @return {ImageData} The image data of the screenshot.
function newScreenshot() end

--- Creates a new SpriteBatch object.
-- @param texture {Texture} The Image or Canvas to use for the sprites.
-- @param size {number} The max number of sprites.
-- @param usage {SpriteBatchUsage} The expected usage of the SpriteBatch.
-- @return {SpriteBatch} The new SpriteBatch.
function newSpriteBatch(texture, size, usage) end

--- Resets the current coordinate transformation.
-- This function is always used to reverse any previous calls to love.graphics.rotate, love.graphics.scale, love.graphics.shear or love.graphics.translate. It returns the current transformation state to its defaults.
function origin() end

--- Draws a point.
-- The pixel grid is actually offset to the center of each pixel. So to get clean pixels drawn use 0.5 + integer increments.
-- @param x {number} The position on the x-axis.
-- @param y {number} The position on the y-axis.
function point(x, y) end

--- Draw a polygon.
-- Following the mode argument, this function can accept multiple numeric arguments or a single table of numeric arguments. In either case the arguments are interpreted as alternating x and y coordinates of the polygon's vertices.
-- When in fill mode, the polygon must be convex and simple or rendering artifacts may occur.
-- @param mode {DrawMode} How to draw the polygon.
-- @param ... {number} The vertices of the polygon.
function polygon(mode, ...) end

--- Pops the current coordinate transformation from the transformation stack.
-- This function is always used to reverse a previous push operation. It returns the current transformation state to what it was before the last preceding push. For an example, see the description of love.graphics.push.
function pop() end

--- Displays the results of drawing operations on the screen.
-- This function is used when writing your own love.run function. It presents all the results of your drawing operations on the screen. See the example in love.run for a typical use of this function.
function present() end

--- Draws text on screen. If no Font is set, one will be created and set (once) if needed.
-- When using translation and scaling functions while drawing text, this function assumes the scale occurs first. If you don't script with this in mind, the text won't be in the right position, or possibly even on screen.
-- love.graphics.print stops at the first ' ' (null) character. This can bite you if you are appending keystrokes to form your string, as some of those are multi-byte unicode characters which will likely contain null bytes.
-- @param text {string} The text to draw.
-- @param x {number} The position to draw the object (x-axis).
-- @param y {number} The position to draw the object (y-axis).
-- @param r {number} Orientation (radians).
-- @param sx {number} Scale factor (x-axis).
-- @param sy {number} Scale factor (y-axis).
-- @param ox {number} Origin offset (x-axis).
-- @param oy {number} Origin offset (y-axis).
-- @param kx {number} Shear factor (x-axis).
-- @param ky {number} Shear factor (y-axis).
function print(text, x, y, r, sx, sy, ox, oy, kx, ky) end

--- Draws formatted text, with word wrap and alignment.
-- See additional notes in love.graphics.print.
-- @param text {string} A text string.
-- @param x {number} The position on the x-axis.
-- @param y {number} The position on the y-axis.
-- @param limit {number} Wrap the line after this many horizontal pixels.
-- @param align {AlignMode} The alignment.
-- @param r {number} Orientation (radians).
-- @param sx {number} Scale factor (x-axis).
-- @param sy {number} Scale factor (y-axis).
-- @param ox {number} Origin offset (x-axis).
-- @param oy {number} Origin offset (y-axis).
-- @param kx {number} Shear factor (x-axis).
-- @param ky {number} Shear factor (y-axis).
function printf(text, x, y, limit, align, r, sx, sy, ox, oy, kx, ky) end

--- Copies and pushes the current coordinate transformation to the transformation stack.
-- This function is always used to prepare for a corresponding pop operation later. It stores the current coordinate transformation state into the transformation stack and keeps it active. Later changes to the transformation can be undone by using the pop operation, which returns the coordinate transform to the state it was in before calling push.
function push() end

--- Draws a rectangle.
-- @param mode {DrawMode} How to draw the rectangle.
-- @param x {number} The position of top-left corner along x-axis.
-- @param y {number} The position of top-left corner along y-axis.
-- @param width {number} Width of the rectangle.
-- @param height {number} Height of the rectangle.
function rectangle(mode, x, y, width, height) end

--- Resets the current graphics settings.
-- Calling reset makes the current drawing color white, the current background color black, resets any active Canvas or Shader, and removes any scissor settings. It sets the BlendMode to alpha. It also sets both the point and line drawing modes to smooth and their sizes to 1.0.
function reset() end

--- Rotates the coordinate system in two dimensions.
-- Calling this function affects all future drawing operations by rotating the coordinate system around the origin by the given amount of radians. This change lasts until love.draw exits.
-- @param angle {number} The amount to rotate the coordinate system in radians.
function rotate(angle) end

--- Scales the coordinate system in two dimensions.
-- By default the coordinate system in LÖVE corresponds to the display pixels in horizontal and vertical directions one-to-one, and the x-axis increases towards the right while the y-axis increases downwards. Scaling the coordinate system changes this relation.
-- After scaling by sx and sy, all coordinates are treated as if they were multiplied by sx and sy. Every result of a drawing operation is also correspondingly scaled, so scaling by (2, 2) for example would mean making everything twice as large in both x- and y-directions. Scaling by a negative value flips the coordinate system in the corresponding direction, which also means everything will be drawn flipped or upside down, or both. Scaling by zero is not a useful operation.
-- Scale and translate are not commutative operations, therefore, calling them in different orders will change the outcome.
-- Scaling lasts until love.draw exits.
-- @param sx {number} The scaling in the direction of the x-axis.
-- @param sy {number} The scaling in the direction of the y-axis. If omitted, it defaults to same as parameter sx.
function scale(sx, sy) end

--- Sets the background color.
-- @param r {number} The red component (0-255).
-- @param g {number} The green component (0-255).
-- @param b {number} The blue component (0-255).
-- @param a {number} The alpha component (0-255).
function setBackgroundColor(r, g, b, a) end

--- Sets the blending mode.
-- @param mode {BlendMode} The blend mode to use.
function setBlendMode(mode) end

--- Sets the render target to one or more Canvases. All drawing operations until the next love.graphics.setCanvas call will be redirected to the specified canvases and not shown on the screen.
-- All canvas arguments must have the same widths and heights and the same texture type. Normally the same thing will be drawn on each canvas, but that can be changed if a pixel shader is used with the "effects" function instead of the regular effect.
-- Not all computers support Canvases, and not all computers which support Canvases will support multiple render targets. Use love.graphics.isSupported to check.
-- nWhen called without arguments, the render target is reset to the screen.
function setCanvas() end

--- Sets the color used for drawing.
-- @param red {number} The amount of red.
-- @param green {number} The amount of green.
-- @param blue {number} The amount of blue.
-- @param alpha {number} The amount of alpha. The alpha value will be applied to all subsequent draw operations, even the drawing of an image.
function setColor(red, green, blue, alpha) end

--- Sets the color mask. Enables or disables specific color components when rendering and clearing the screen. For example, if red is set to false, no further changes will be made to the red component of any pixels.
-- Enables all color components when called without arguments.
function setColorMask() end

--- Sets the default scaling filters used with Images, Canvases, and Fonts.
-- This function does not apply retroactively to loaded images.
-- @param min {FilterMode} Filter mode used when scaling the image down.
-- @param mag {FilterMode} Filter mode used when scaling the image up.
-- @param anisotropy {number} Maximum amount of Anisotropic Filtering used.
function setDefaultFilter(min, mag, anisotropy) end

--- Set an already-loaded Font as the current font or create and load a new one from the file and size.
-- It's recommended that Font objects are created with love.graphics.newFont in the loading stage and then passed to this function in the drawing stage.
-- @param font {Font} The Font object to use.
function setFont(font) end

--- Defines an inverted stencil for the drawing operations or releases the active one.
-- It's the same as love.graphics.setStencil with the mask inverted.
-- Calling the function without arguments releases the active stencil.
function setInvertedStencil() end

--- Sets the line join style.
-- @param join {LineJoin} The LineJoin to use.
function setLineJoin(join) end

--- Sets the line style.
-- @param style {LineStyle} The LineStyle to use.
function setLineStyle(style) end

--- Sets the line width.
-- @param width {number} The width of the line.
function setLineWidth(width) end

--- Creates and sets a new font.
-- @param size {number} The size of the font.
-- @return {Font} The new font.
function setNewFont(size) end

--- Sets or resets a Shader as the current pixel effect or vertex shaders. All drawing operations until the next love.graphics.setShader will be drawn using the Shader object specified.
-- Disables the shaders when called without arguments.
function setShader() end

--- Sets the point size.
-- @param size {number} The new point size.
function setPointSize(size) end

--- Sets the point style.
-- @param style {PointStyle} The new point style.
function setPointStyle(style) end

--- Sets or disables scissor.
-- The scissor limits the drawing area to a specified rectangle. This affects all graphics calls, including love.graphics.clear.
function setScissor() end

--- Sets whether wireframe lines will be used when drawing.
-- Wireframe mode should only be used for debugging. The lines drawn with it enabled do not behave like regular love.graphics lines: their widths don't scale with the coordinate transformations or with love.graphics.setLineWidth, and they don't use the smooth LineStyle.
-- @param enable {boolean} True to enable wireframe mode when drawing, false to disable it.
function setWireframe(enable) end

--- Defines or releases a stencil for the drawing operations.
-- The passed function draws to the stencil instead of the screen, creating an image with transparent and opaque pixels. While active, it is used to test where pixels will be drawn or discarded.
-- Calling the function without arguments releases the active stencil.
-- When called without arguments, the active stencil is released.
function setStencil() end

--- Shears the coordinate system.
-- @param kx {number} The shear factor on the x-axis.
-- @param ky {number} The shear factor on the y-axis.
function shear(kx, ky) end

--- Translates the coordinate system in two dimensions.
-- When this function is called with two numbers, dx, and dy, all the following drawing operations take effect as if their x and y coordinates were x+dx and y+dy.
-- Scale and translate are not commutative operations, therefore, calling them in different orders will change the outcome.
-- This change lasts until love.graphics.clear is called (which is called automatically before love.draw in the default love.run function), or a love.graphics.pop reverts to a previous coordinate system state.
-- Translating using whole numbers will prevent tearing/blurring of images and fonts draw after translating.
-- @param dx {number} The translation relative to the x-axis.
-- @param dy {number} The translation relative to the y-axis.
function translate(dx, dy) end

