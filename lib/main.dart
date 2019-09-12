import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() => runApp(
    MyApp()
);

class MyApp extends StatelessWidget {
  final String _appTitle = 'Solid Software App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _appTitle,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: HomePage(title: _appTitle),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String _title = "Hello, Solid!";
  final double _titleSize = 30.0;
  var _randomColor;

  void _onTap() {
    setState(() {
      _randomColor = generateRandomColor();
    });
  }

  Color generateRandomColor() {
    return Color((math.Random().nextDouble() * 0xFFFFFF).toInt() << 0).withOpacity(1.0);
  }

  @override
  Widget build(BuildContext context) {
    Widget gestureDetectorSection = new GestureDetector(
      onTap: _onTap,
      child: Container(
        constraints: BoxConstraints.expand(),
        color: _randomColor,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            new Text(_title,
            style: TextStyle(fontSize: _titleSize)),
          ],
        ),
      ),
    );

    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
        centerTitle: true,
      ),

      body: Container(
        child: gestureDetectorSection,
      ),
    );
  }
}
