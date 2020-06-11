public
embedSVGComponent: aComponent width: aWidth height: aHeight
	" inline component "
	
	aWidth notNil ifTrue: [ self width: aWidth ].
	aHeight notNil ifTrue: [ self height: aHeight ].
	aComponent setAttributesOfRootTag: self. 
	self drawWith: [ : svg | svg render: aComponent ].
