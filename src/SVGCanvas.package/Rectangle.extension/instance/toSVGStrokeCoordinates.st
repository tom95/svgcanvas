*SVGCanvas
toSVGStrokeCoordinates
	" assume that the coordiante system of this rectangle is a classic pixmap-based one "

	^ self species 
		origin: self origin toSVGStrokeCoordinates
		extent: self extent