as yet unclassified
nextPutEscaped: aCharacter

	| codePoint |
	codePoint := aCharacter charCode.
	codePoint = 34 "$""" ifTrue: [ ^ stream nextPutAll: '&quot;' ].
	codePoint = 60 "$<" ifTrue: [ ^ stream nextPutAll: '&lt;' ].
	codePoint = 38 "$&" ifTrue: [ ^ stream nextPutAll: '&amp;' ].
	codePoint = 62 "$>" ifTrue: [ ^ stream nextPutAll: '&gt;' ].
	stream nextPut: aCharacter