public
openTag
	| fullTag |
	fullTag := "canvas context containsInlinedSVG 
		ifTrue: [ canvas context userAgentAdaptor fullTagForInlinedSVGTag: self tag ]
		ifFalse: [ "self tag "]".
	self needsId ifTrue: [ self ensureId ].
	canvas svgTagsNeedNamespace ifTrue: 
		[ self 
			attributeAt: 'xmlns'
			put: SVGRoot defaultNamespace ].
	self document 
		openTag: fullTag
		attributes: attributes
		closed: self isClosed