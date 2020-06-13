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

As an alternative, the Squeak font `Bitmap DejaVu Sans` will currently be automatically mapped to `DejaVu Sans`, which should match of the font when installed to your system. As such, exports should look correct when using this font.

## SVG Embed
The exporter supports embedding other SVG documents instead of rasterizing them as bitmaps. When using the SVGMorph, simply adding a `mySvgMorph setProperty: #svgSource toValue: svgXMLDocument root` should allow the system to export it correctly. More generally, you can overwrite `#fullDrawSvgOn:` for your custom morph and then use the `SVGCanvas>>drawSvg:at:` method to render the SVG directly. See [SBIcon>>#fullDrawSvgOn:](https://github.com/tom95/sandblocks/blob/master/packages/Sandblocks-Core/SBIcon.class.st#L4865) as an example.
