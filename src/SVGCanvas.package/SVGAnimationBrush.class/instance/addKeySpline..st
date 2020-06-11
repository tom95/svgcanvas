accessing
addKeySpline: aValue

	self attributes at: 'keySplines' append: aValue toSVGString separator: ';'