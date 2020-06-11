*SVGCanvas
toSVGURIReference
	^ ('url(*' match: self)
		ifTrue: [ self ]
		ifFalse: [ 'url(#' , self, ')' ]