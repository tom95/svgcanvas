accessing-path primitives
moveTo: aPoint relative: relative 

	self
		addToPath: (relative
				ifTrue: ['m']
				ifFalse: ['M']).
	self addPointToPath: aPoint