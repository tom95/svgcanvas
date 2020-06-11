*SVGCanvas
toSVGStrokeCoordinates
	" assume that the coordiante system of this point is a classic pixmap-based one "

	^ self species 
		x: x rounded + 0.5 
		y: y rounded + 0.5 