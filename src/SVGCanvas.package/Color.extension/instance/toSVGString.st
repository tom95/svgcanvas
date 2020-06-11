*SVGCanvas
toSVGString
	"Color paleOrange svgAttributeValue"
	| str |
	str := String new writeStream.
	str nextPutAll: 'rgb('.
	(self red * 255) rounded printOn: str.
	str nextPut: $,.
	(self green * 255) rounded printOn: str.
	str nextPut: $,.
	(self blue * 255) rounded printOn: str.
	str nextPutAll: ')'.
	^ str contents