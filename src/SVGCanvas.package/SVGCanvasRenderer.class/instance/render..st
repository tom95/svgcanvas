render
render: anObject
	"Render anObject using this Renderer."
	
	self flush.
	anObject renderOn: self