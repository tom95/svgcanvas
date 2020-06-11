drawing
line: pt1 to: pt2 width: w color: c 

	svgCanvas line
		strokeWidth: w;
		stroke: c;
		from: (self toSVGStrokeCoordinates: pt1) to:  (self toSVGStrokeCoordinates: pt2)