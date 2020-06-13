as yet unclassified
beginWithView: aRectangle do: aBlock

	self nextPutAll: '<?xml version="1.0" encoding="utf-8"?>
<svg xml:space="preserve" width="', aRectangle width, '" height="', aRectangle height, '" viewBox="', aRectangle left, ' ', aRectangle top, ' ', aRectangle width, ' ', aRectangle height, '" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">'	.
	aBlock value: self.
	self nextPutAll: '</svg>'