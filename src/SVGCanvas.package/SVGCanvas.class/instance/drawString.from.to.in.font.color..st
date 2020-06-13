drawing-support
drawString: s from: firstIndex to: lastIndex in: boundsRect font: fontOrNil color: c

	| textShape base |
	textShape := svgCanvas textShape.
	base := boundsRect topLeft + (0 @ (fontOrNil ifNil: [TextStyle defaultFont]) ascent).
	textShape
		rendering: 'optimizeLegibility';
		squeakFont: (fontOrNil ifNil: [TextStyle defaultFont]);
		transform: [:t | t translate: base];
		fill: c.
	
	(fontOrNil notNil and: [fontOrNil emphasis = TextEmphasis bold emphasisCode]) ifTrue: [textShape bold].
	
	textShape with: (s asString copyFrom: firstIndex to: lastIndex)