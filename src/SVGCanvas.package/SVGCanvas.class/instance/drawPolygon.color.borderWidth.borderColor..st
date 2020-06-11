drawing-polygons
drawPolygon: vertices color: c borderWidth: bw borderColor: bc 

	" hkl: maybe use vertices collect: [: p  | p toSVGStrokeCoordinates ] "
	
	svgCanvas polygon
		fill: c; 
		stroke: bc; 
		strokeWidth: bw;
		points: vertices.