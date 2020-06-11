drawing-support
translateBy: delta clippingTo: aRect during: aBlock

	svgCanvas group
		transform: [ : t | t translate: delta ];
		with: [ self nest: aBlock ]