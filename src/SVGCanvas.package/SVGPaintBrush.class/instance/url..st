accessing
url: aPaintReference 
	" A URI reference to a different 'linearGradient' or 'radialGradient' element within the current SVG document fragment "
	self attributes 
		at: 'xlink:href'
		put: aPaintReference toSVGURIReference