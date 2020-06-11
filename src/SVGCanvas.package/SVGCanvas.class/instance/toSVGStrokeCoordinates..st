drawing-support
toSVGStrokeCoordinates: aGeometric

	^ self convertCoordinates 
		ifTrue: [ aGeometric toSVGStrokeCoordinates ]
		ifFalse: [ aGeometric ]