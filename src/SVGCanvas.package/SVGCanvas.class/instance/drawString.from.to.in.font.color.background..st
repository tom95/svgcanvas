drawing-support
drawString: s from: firstIndex to: lastIndex in: boundsRect font: fontOrNil color: c background: b

	self fillRectangle: boundsRect color: b.
	self drawString: s from: firstIndex to: lastIndex in: boundsRect font: fontOrNil color: c 