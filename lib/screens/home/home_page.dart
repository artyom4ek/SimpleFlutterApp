import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/models/customized_data.dart';
import 'package:flutter_app/screens/hello/hello.dart';
import 'package:flutter_app/ui/widgets/color_box.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String _homePageTitle = 'Customize your title!';
  final String _propertyAnimTitle = 'Color change animation:';
  final String _propertyTitleColor = 'Title color:';
  final String _titleForHello = 'Hello, Solid!';
  final String _btnShowTitleText = 'Show title!';

  bool _colorChangeAnimation = true;
  int _titleSize = 12;
  Color _color = Colors.black;

  void _updateTitleColor(Color color) {
    setState(() {
      _color = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(_homePageTitle, style: TextStyle(color: Colors.black54, fontSize: 26)),
              SwitchListTile(
                title: Text(_propertyAnimTitle),
                value: _colorChangeAnimation,
                onChanged: (value) {
                  setState(() {
                    _colorChangeAnimation = value;
                  });
                },
              ),
              ListTile(
                title: Text("Title size:   ${_titleSize}sp"),
                trailing: CupertinoSlider(
                  min: 12,
                  max: 36,
                  divisions: 12,
                  value: _titleSize.toDouble(),
                  onChanged: (double value) {
                    setState(() {
                      _titleSize = value.toInt();
                    });
                  },
                ),
              ),
              Divider(),
              new ListTile( // TODO: add border inside colorBox when they are choosed
                leading: new Icon(Icons.color_lens),
                title: new Text(_propertyTitleColor, textScaleFactor: 1.3),
                dense: true,
                trailing: ColorBoxGroup(
                  width: 25.0,
                  height: 25.0,
                  spacing: 10.0,
                  groupValue: Colors.black,
                  colors: [
                    Colors.black,
                    Colors.red,
                    Colors.orange,
                    Colors.green,
                    Colors.purple,
                    Colors.blue,
                  ],
                  onTap: (color) {
                    _updateTitleColor(color);
                  },
                ),
              ),
              Divider(),
              RaisedButton(
                onPressed: () {
                  final customizedData = CustomizedData(
                      title: _titleForHello,
                      colorChangeAnimation: _colorChangeAnimation,
                      textSize: _titleSize.toDouble(),
                      colorText: _color
                  );
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HelloPage(data: customizedData)),
                  );
                },
                child: Text(_btnShowTitleText),
                color: Colors.indigo,
                textColor: Colors.white,
              ),
            ],
          ),
        ),
      );
  }
}