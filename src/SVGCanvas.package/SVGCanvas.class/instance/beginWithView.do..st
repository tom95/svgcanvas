accessing
beginWithView: aRectangle do: aBlock

	svgCanvas document beginWithView: aRectangle do: [:doc |
		aBlock value: self.
		svgCanvas flush]