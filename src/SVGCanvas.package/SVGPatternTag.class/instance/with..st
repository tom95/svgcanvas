public
with: aBlock 

	patternTransformList isNil
		ifFalse: [
			self attributeAt: 'patternTransform' put: patternTransformList.
		].
	super with: aBlock