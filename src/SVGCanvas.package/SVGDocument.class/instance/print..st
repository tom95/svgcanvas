as yet unclassified
print: anObject

	self flag: #todo. " ensure that strings escape themselves, see WAXmlEncoder>>nextPut: "
	anObject isString ifTrue: [^ self nextPutAllEscaped: anObject].
	anObject isDictionary ifTrue: [
		^ anObject keysAndValuesDo: [ :key :value |
			value == false ifFalse: [
				self
					nextPut: Character space;
					nextPutAll: key.
				value == true ifFalse: [
					self
						nextPutAll: '="';
						nextPutAll: value toSVGString;
					nextPut: $"]]]].
	
	anObject printOn: stream