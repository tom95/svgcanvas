accessing
patternTransformList

	patternTransformList ifNil: [patternTransformList := SVGTransformList new].
	^patternTransformList