accessing
svg
	" Already SVG "
	
	| brush svg |
	brush := SVGRootTag new.
	self brush: brush.
	brush svgCanvas: self.
	^ brush