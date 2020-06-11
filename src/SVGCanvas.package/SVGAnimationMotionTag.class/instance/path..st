accessing
path: aBlockOrString

	^ aBlockOrString isString
		ifTrue: [ self attributeAt: 'd' put: aBlockOrString ] 
		ifFalse: [ aBlockOrString value: self path ].