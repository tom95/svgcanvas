*SVGCanvas
fullDrawSvgOn: aCanvas

	| source |
	source := self valueOfProperty: #svgSource ifAbsent: [^ super fullDrawSvgOn: aCanvas].
	aCanvas drawSvg: source extent: self extent