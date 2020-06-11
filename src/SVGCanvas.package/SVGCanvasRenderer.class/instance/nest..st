tags-animation
nest: aBlock
	parentBrush := currentBrush.
	currentBrush := nil.
	aBlock renderOn: self.
	self flush.
	parentBrush := parentBrush parent