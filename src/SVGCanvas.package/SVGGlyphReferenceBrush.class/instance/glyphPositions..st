attributes
glyphPositions: somePoints

	| xstr ystr |
	xstr := String new writeStream.
	ystr := String new writeStream.
	somePoints 
		do: [  : point |
			xstr nextPutAll: point x toSVGString.
			ystr nextPutAll: point y toSVGString.
		] 
		separatedBy: [ xstr space. ystr space ].
	self x: xstr contents.
	self y: xstr contents.