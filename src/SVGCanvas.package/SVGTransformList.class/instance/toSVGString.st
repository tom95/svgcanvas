printing
toSVGString
	| resultStream |
	resultStream := WriteStream on: String new.
	self do: [:aType | resultStream nextPutAll: aType toSVGString] separatedBy: [resultStream nextPut: $ ].
	^resultStream contents