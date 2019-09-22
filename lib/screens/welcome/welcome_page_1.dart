import 'package:flutter/material.dart';

class WelcomePage1 extends StatelessWidget {
  final String _welcome1Title = 'Hi, Solid Software!';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(_welcome1Title,
            style: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                color: Colors.deepOrange)
        ),
      ),
    );
  }
}