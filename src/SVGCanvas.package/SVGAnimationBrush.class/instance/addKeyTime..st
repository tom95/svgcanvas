accessing
addKeyTime: aValue

	self attributes at: 'keyTimes' append: aValue toSVGString separator: ';'