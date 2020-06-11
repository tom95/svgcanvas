attributes
glyphOrientationHorizontal: angleString 
	"The value of the angle is restricted to 0, 90, 180, and 270 degrees. 
	The user agent shall round the value of the angle to the closest of the permitted values."

	self attributeAt: 'glyph-orientation-horizontal' put: angleString 