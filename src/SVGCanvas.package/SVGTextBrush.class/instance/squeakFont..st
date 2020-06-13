attributes
squeakFont: aFont

	self flag: #fixme. " should not be hardcoded "
	aFont familyName = 'Bitmap DejaVu Sans'
		ifTrue: [self fontFamily: 'DejaVu Sans'; fontSize: aFont pixelSize]
		ifFalse: [self fontFamily: aFont familyName; fontSize: aFont pixelSize]