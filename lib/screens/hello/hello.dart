import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:flutter_app/models/customized_data.dart';

class HelloPage extends StatefulWidget {
  final CustomizedData data;

  HelloPage({Key key, this.data}) : super(key: key);

  @override
  _HelloPageState createState() => _HelloPageState(data);
}

class _HelloPageState extends State<HelloPage> {
  final String _appTitle = 'Hello';

  Color _randomColor = Colors.white;

  final CustomizedData data;
  _HelloPageState(this.data);

  void _onTap() {
    setState(() {
      _randomColor = _generateRandomColor();
    });
  }

  Color _generateRandomColor() {
    return Color((math.Random().nextDouble() * 0xFFFFFF).toInt() << 0).withOpacity(1.0);
  }

  int _getAnimDuration() {
    return (data.colorChangeAnimation == true) ? 600 : 0;
  }

  @override
  Widget build(BuildContext context) {
    Widget gestureDetectorSection = new GestureDetector(
      onTap: _onTap,
      child: AnimatedContainer(
        duration: Duration(milliseconds: _getAnimDuration()),
        decoration: BoxDecoration(
            color: _randomColor
        ),
        constraints: BoxConstraints.expand(),
        // color: _randomColor,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            new Text(data.title,
                style: TextStyle(fontSize: data.textSize, color: data.colorText)),
          ],
        ),
      ),
    );

    return new Scaffold(
      appBar: new AppBar(
        title: new Text(_appTitle),
        centerTitle: true,
      ),

      body: Container(
        child: gestureDetectorSection,
      ),
    );
  }
}