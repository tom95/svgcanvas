accessing
addPointToPath: aPoint
	
	pathStream position > 0
		ifTrue: [ pathStream nextPut: Character space ].
	pathStream nextPutAll: aPoint x toSVGString.
	pathStream nextPut: $,.
	pathStream nextPutAll: aPoint y toSVGString.