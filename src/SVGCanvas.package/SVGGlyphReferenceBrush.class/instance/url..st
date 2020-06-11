attributes
url: aGlyphReference 
	" URI of a glyph or alternative glyph definition "
	self attributes 
		at: 'xlink:href'
		put: aGlyphReference toSVGURIReference