import 'package:flutter/material.dart';
import 'package:flutter_app/screens/home/home.dart';

class WelcomePage3 extends StatelessWidget {
  final String _welcome3Title = 'Okay, lets go for more!';
  final String _btnGo = 'GO!';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(_welcome3Title,
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange)
              ),
              RaisedButton(
                child: Text(_btnGo),
                color: Colors.indigo,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                     MaterialPageRoute(builder: (context) => Home()),
                  );
                },
              )
            ],
          ),
      ),
    );
  }
}