public
with: aBlock 
	| aStream |
	aStream := WriteStream on: String new.
	points 
		do: 
			[ : aPoint | 
			aStream
				nextPutAll: aPoint x toSVGString ;
				nextPut: $, ;
				nextPutAll: aPoint y toSVGString ]
		separatedBy: [ aStream nextPut: $  ].
	self attributes 
		at: 'points'
		put: aStream contents.
	super with: aBlock