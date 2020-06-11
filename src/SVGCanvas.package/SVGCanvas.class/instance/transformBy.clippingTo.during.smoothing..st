drawing-support
transformBy: aDisplayTransform clippingTo: aClipRect during: aBlock smoothing: cellSize 
	" not yet "
	
	aDisplayTransform isPureTranslation ifTrue: [^ self translateBy: aDisplayTransform offset negated truncated clippingTo: aClipRect during: aBlock].
	self notYet.
	^ self nest: aBlock