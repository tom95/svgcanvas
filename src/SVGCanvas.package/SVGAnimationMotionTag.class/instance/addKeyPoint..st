accessing
addKeyPoint: aValue

	self attributes at: 'keyPoints' append: aValue toSVGString separator: ';'