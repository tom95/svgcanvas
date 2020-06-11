accessing
extent: aPoint
	self
		attributeAt: 'width'
		put: aPoint x.
	self
		attributeAt: 'height'
		put: aPoint y.
		
