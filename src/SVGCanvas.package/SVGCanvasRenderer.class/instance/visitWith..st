private
visitWith: aBlock

	| visitor oldVisitor |
	self initialize.
	oldVisitor := context visitor.
	visitor := SVGRenderVisitor context: context.
	^ [ 
		context visitor: visitor.
		aBlock value: self
	] ensure: [
		context visitor: oldVisitor
	]