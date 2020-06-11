accessing
gradientTransformList

	gradientTransformList ifNil: [gradientTransformList := SVGTransformList new].
	^gradientTransformList