accessing
addAnimationValue: aValue

	self attributes at: 'values' append: aValue toSVGString separator: ';'