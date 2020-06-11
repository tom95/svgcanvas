convenience
drawPieSegmentFrom:  startAngle to: angle length: length
"always start from 0@0, because you should use translate to set the origin"
	self moveTo: 0@0.
	self lineTo: (Point r: length degrees: startAngle).
	self 
		arcTo: (Point r: length degrees: angle)
		radius: length@length
		rotation: 0
		large: (startAngle - angle) abs > 180
		sweep: true.
	self lineTo: 0@0.
	self closePath.