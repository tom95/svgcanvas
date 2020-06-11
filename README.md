# SVG Canvas

A canvas that produces SVG output. This is essentially a fork of the [SeasideDynamicSVG](http://www.squeaksource.com/SeasideDynamicSVG.html) project, just without the dependency on Seaside.

> NOTE: This project is in an early stage, be sure to have a look at the issues to get an idea of its limitations.

## Installation

```
Metacello new
	baseline: 'SVGCanvas';
	repository: 'github://tom95/SVGCanvas:master/src';
	load.

(ToolBuilder build: Browser new) clipSVG.
```

## Quality & Font Rendering
To correctly render paragraphs, the library needs to use the same font as the final output. To ensure this, it is best to import a TTF font and use this font for morphs you want to export as SVG.
