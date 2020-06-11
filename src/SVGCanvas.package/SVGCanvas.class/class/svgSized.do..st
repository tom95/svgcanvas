instance creation
svgSized: aPoint do: aBlock

	^ self basicNew
		initializeWith: (SVGCanvasRenderer document: SVGDocument new);
		beginWithView: (0 @ 0 extent: aPoint) do: aBlock;
		contents