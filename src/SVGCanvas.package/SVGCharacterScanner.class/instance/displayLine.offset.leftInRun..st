displaying
displayLine: line offset: baseOffset leftInRun: leftInRun
	| offset aText string doJustified x |

	self setTextStylesForOffset: ((line first) + 1).	" sets up various instance vars from text styles "
	offset := baseOffset.
	offset := offset + (line left @ (line top + line baseline - self font ascent )). 
	offset := offset + ((self textStyle alignment caseOf:{
		[2 "Centered"] -> [ line paddingWidth /2 ].
		[1 "RightFlush"] -> [ line paddingWidth ] } otherwise:[0]) @ 0).
	
	aText := paragraph text copyFrom: line first to: line last.
	doJustified := (paragraph textStyle alignment = 3"Justified")
						and: [ (paragraph text at:line last) ~= Character cr
						and: [aText runs runs size = 1]].
	string := aText string.
	x := 0.
	aText runs withStartStopAndValueDo: [:start :stop :attributes | | s drawFont |
		self setTextStylesForOffset: (start + line first - 1).	" sets up inst vars from text styles "
		s := string copyFrom: start to: stop.
		drawFont := self font.
		canvas 
			textStyled: s
			at: offset + (x @ 0)
			font: drawFont
			color: foregroundColor
			justified: doJustified		"<-can't do this now for multi-styles" 
			parwidth: line right - line left.
		x := x + (drawFont widthOfString: s).
	].
