attributes
shiftGlyphsBy: somePoints 
	| xstr ystr |
	xstr := String new writeStream.
	ystr := String new writeStream.
	somePoints 
		do: 
			[ : point | 
			xstr nextPutAll: point x toSVGString.
			ystr nextPutAll: point y toSVGString ]
		separatedBy: 
			[ xstr space.
			ystr space ].
	self shiftX: xstr contents.
	self shiftY: xstr contents