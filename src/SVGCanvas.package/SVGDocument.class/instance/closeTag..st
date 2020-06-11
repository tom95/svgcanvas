as yet unclassified
closeTag: aString
	"Close the XML tag named aString."

	stream nextPutAll: '</'; nextPutAll: aString; nextPut: $>