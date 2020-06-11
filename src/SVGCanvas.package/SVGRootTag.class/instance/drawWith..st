public
drawWith: aBlock 
	" switches to a SVG renderer and visitor "

	self openTag.
	canvas nest: [
		self before.
		self svgCanvas visitWith: aBlock.
		self after
	].
	self closeTag.
	closed := true