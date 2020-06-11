drawing-images
image: aForm at: aPoint sourceRect: sourceRect rule: rule

	svgCanvas image
		x: aPoint x;
		y: aPoint y;
		width: sourceRect width;
		height: sourceRect height;
		url: ('data:image/png;base64,', (Base64MimeConverter mimeEncode: (ByteArray streamContents: [:s | PNGReadWriter putForm: aForm onStream: s]) readStream multiLine: false) contents);
		yourself