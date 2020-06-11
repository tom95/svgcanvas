public
text: anObject
	"Emit anObject onto the target document.

	If you were looking for <text>, see #textShape. 
	Due to the way String implements renderOn:, this name conflict resolution was necessary"

	self flush.
	self document print: anObject