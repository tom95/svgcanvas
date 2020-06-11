public
with: aBlock 

	gradientTransformList isNil
		ifFalse: [
			self attributeAt: 'gradientTransform' put: gradientTransformList.
		].
	super with: aBlock