tags
anchor
	
	| anchorBrush |
	anchorBrush := self context disableSVGAnchors
		ifTrue: [SVGDisabledAnchorBrush new]
		ifFalse: [SVGAnchorTag new].
	^self brush: anchorBrush