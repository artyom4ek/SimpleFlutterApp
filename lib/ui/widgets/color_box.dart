import 'package:meta/meta.dart';
import 'package:flutter/material.dart';

typedef ColorSelectCallback(Color color);

class ColorBoxGroup extends StatelessWidget {
  const ColorBoxGroup({
    Key key,
    @required this.width,
    @required this.height,
    @required this.colors,
    this.spacing = 0.0,
    this.groupValue,
    this.onTap,
  });

  final double width;
  final double height;
  final ColorSelectCallback onTap;
  final List<Color> colors;
  final Color groupValue;
  final double spacing;

  @override
  Widget build(BuildContext context) {
    return new Wrap(
      spacing: spacing,
      children: new List.from(colors.map((color) =>
      new ColorBox(
        key: new Key("color-$color"),
        width: width,
        height: height,
        color: color,
        selected: color == groupValue,
        onTap: () => onTap(color),
      ))),
    );
  }
}

class ColorBox extends StatelessWidget {
  const ColorBox({
    Key key,
    @required this.width,
    @required this.height,
    @required this.color,
    this.selected = false,
    this.onTap,
  })
      : assert(width != null && width > 0),
        assert(height != null && height > 0),
        assert(color != null),
        super(key: key);

  final double width;
  final double height;
  final Color color;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    BoxBorder border;
    if (selected) {
      border = new Border.all(color: Colors.black, width: 2.0);
    }

    return new GestureDetector(
      onTap: onTap,
      child: new SizedBox(
        width: width,
        height: height,
        child: new Container(
          decoration: new BoxDecoration(
            color: color,
            border: border,
          ),
        ),
      ),
    );
  }
}