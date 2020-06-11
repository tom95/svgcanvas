convenience-referencing
generateURL
	" convenience method for referencing this tag "
	self id isNil ifTrue: [ self error: 'Cannot reference tag without id attribute' ].
	^ self id toSVGURIReference