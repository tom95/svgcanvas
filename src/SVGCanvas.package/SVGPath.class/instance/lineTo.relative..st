accessing-path primitives
lineTo: aPoint relative: relative 

	self
		addToPath: (relative
				ifTrue: ['l']
				ifFalse: ['L']).
	self addPointToPath: aPoint