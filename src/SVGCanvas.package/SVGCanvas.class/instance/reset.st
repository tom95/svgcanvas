initialization
reset

	super reset.
	origin := 0 @ 0.
	clipRect := 0 @ 0 corner: 10000 @ 10000.
	currentColor := nil