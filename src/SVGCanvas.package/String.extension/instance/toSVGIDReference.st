*SVGCanvas
toSVGIDReference

	^ self first = $# 
		ifTrue: [ self ]
		ifFalse: ['#', self ] 