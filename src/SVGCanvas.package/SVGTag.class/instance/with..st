brush
with: anObject
	"Render anObject into the receiver. Make sure that you call #with: last in the cascade, as this method will serialize the tag onto the output document."
	transformList ifNotNil: [self attributes at: 'transform' put: transformList toSVGString].
	
	self openTag.
	canvas nest: [
		self before.
		canvas render: anObject.
		self after ].
	closed := true.
	self isClosed
		ifFalse: [ self closeTag ]