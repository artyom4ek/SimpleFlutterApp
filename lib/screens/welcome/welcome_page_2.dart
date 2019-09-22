import 'package:flutter/material.dart';

class WelcomePage2 extends StatelessWidget {
  final String _welcome2Title = 'This is test Flutter App!';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(_welcome2Title,
            style: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: Colors.deepOrange)
        ),
      ),
    );
  }
}