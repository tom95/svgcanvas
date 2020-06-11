attributes
glyphRef: aString 
	" hkl: from the w3c spec 
		'The glyph identifier, the format of which is dependent on the format of the given font.' 
	so is it an 'identifier', a 'reference' or a 'format' ? "
	self 
		attributeAt: 'glyph-ref'
		put: aString