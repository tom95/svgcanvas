as yet unclassified
renderSvg: anObject at: aPoint

	self nextPutAll: '<g transform="translate(', aPoint x, ',', aPoint y, ')">'.
	self nextPutAll: anObject asString.
	self nextPutAll: '</g>'.