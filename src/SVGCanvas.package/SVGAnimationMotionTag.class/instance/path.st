accessing
path

	path isNil ifTrue: [ path := SVGPath new ].
	^ path