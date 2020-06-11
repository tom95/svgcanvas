writing
writeHeadOn: aDocument
	aDocument nextPutAll: '<?xml version="1.0" encoding="UTF-8" standalone="no"?>
'.
	docType notNil ifTrue: [aDocument nextPutAll: docType].
	aDocument openTag: svgTag tag attributes: svgTag attributes.