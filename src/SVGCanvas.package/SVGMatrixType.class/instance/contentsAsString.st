printing
contentsAsString
	| resultStream |
	resultStream := WriteStream on: String new.
	contents do: [:aNumber | resultStream nextPutAll: aNumber toSVGString] separatedBy: [resultStream nextPut: $ ].
	^resultStream contents