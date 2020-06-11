initialization
initialize

	super initialize.
	self attributeAt: 'xmlns' put: SVGRoot defaultNamespace. 
	self attributeAt: 'xmlns:xlink' put: SVGRoot xlinkNamespace.