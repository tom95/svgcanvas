accessing-path primitives
curveWithAll: points relative: relative 

	self
		addToPath: (relative
				ifTrue: ['c']
				ifFalse: ['C']).
	points
		do: [:point | self addPointToPath: point]