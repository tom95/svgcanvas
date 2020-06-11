tags-animation
flush
	currentBrush isNil
		ifTrue: [ ^ self ].
	currentBrush close.
	currentBrush := nil