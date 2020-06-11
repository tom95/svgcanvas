as yet unclassified
beginWithView: aRectangle do: aBlock

	self nextPutAll: '<?xml version="1.0" encoding="utf-8"?>
<svg width="', aRectangle width asString, '" height="', aRectangle height asString, '" viewBox="', aRectangle left, ' ', aRectangle top asString, ' ', aRectangle width asString, ' ', aRectangle height asString, '" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">'	.
	aBlock value: self.
	self nextPutAll: '</svg>'