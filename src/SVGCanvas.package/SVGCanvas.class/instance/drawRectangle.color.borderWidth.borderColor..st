drawing-rectangles
drawRectangle: r color: fillColor borderWidth: borderWidth borderColor: borderColor

	svgCanvas rectangle
		fill: fillColor; 
		stroke: borderColor; 
		strokeWidth: borderWidth;
		rectangle: (self toSVGStrokeCoordinates: r)