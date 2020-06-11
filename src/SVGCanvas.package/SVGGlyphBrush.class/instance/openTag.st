public
openTag

	| d |
	(path notNil and: [ (self attributes includesKey: 'd') not ])
		ifTrue: [
			d := path pathString.
			d notNil ifTrue: [ self attributeAt: 'd' put: d ].
		].
	super openTag.