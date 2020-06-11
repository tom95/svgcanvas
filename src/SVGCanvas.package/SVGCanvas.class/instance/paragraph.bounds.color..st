drawing
paragraph: para bounds: bounds color: c
	currentColor := c.
	
	para displayOn: self
		using: ((SVGCharacterScanner scannerWithCanvas: self paragraph: para bounds: bounds)
			textColor: c;
			yourself)
		at: bounds topLeft