accessing-path primitives
arcTo: aPoint radius: radiusXAndY rotation: rotation large: large sweep: sweep relative: relative
	
	self
		addToPath:
			(relative
				ifTrue: ['a']
				ifFalse: ['A']).
	self addToPath: radiusXAndY x.
	self addToPath: radiusXAndY y.
	self addToPath: rotation.
	self
		addToPath:
			(large
				ifTrue: ['1']
				ifFalse: ['0']).
	self
		addToPath:
			(sweep
				ifTrue: ['1']
				ifFalse: ['0']).
	self addPointToPath: aPoint