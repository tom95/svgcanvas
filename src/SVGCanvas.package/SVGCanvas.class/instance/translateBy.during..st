drawing-support
translateBy: delta during: aBlock

	svgCanvas group
		transform: [ : t | t translate: delta ];
		with: [ self nest: aBlock ]