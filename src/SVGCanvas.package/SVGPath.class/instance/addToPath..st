accessing
addToPath: aValue
	
	pathStream position > 0
		ifTrue: [ pathStream nextPut: Character space ].
	pathStream nextPutAll: aValue toSVGString.