instance creation
morphAsSvg: aMorph

	^ self basicNew
		initializeWith: (SVGCanvasRenderer document: SVGDocument new);
		beginWithView: aMorph bounds do: [:canvas | aMorph fullDrawOn: canvas];
		contents