drawing
line: pt1 to: pt2 brushForm: brush 

	svgCanvas line
		stroke: currentColor;
		from: (self toSVGStrokeCoordinates: pt1) to:  (self toSVGStrokeCoordinates: pt2)