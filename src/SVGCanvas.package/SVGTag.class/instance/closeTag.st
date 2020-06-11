private
closeTag
	"Close the receiving tag onto the document."

	| fullTag |
	self isClosed
		ifFalse: [
			fullTag := "canvas context containsInlinedSVG
				ifTrue: [canvas context userAgentAdaptor fullTagForInlinedSVGTag: self tag]
				ifFalse: ["self tag"]".
			self document closeTag: fullTag
		]