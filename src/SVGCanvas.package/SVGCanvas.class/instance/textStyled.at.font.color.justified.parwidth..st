drawing
textStyled: s at: aPoint font: aFont color: c justified: justify parwidth: parwidth 

	self drawString: s from: 1 to: s size in: (aPoint extent: (aFont widthOfString: s) @ aFont height) font: aFont color: (c ifNil: [currentColor])