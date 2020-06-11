accessing-attributes
attributeAt: aKey ifAbsentPut: aBlock 
	^ super 
		attributeAt: aKey
		ifAbsentPut: [ aBlock value toSVGString ]