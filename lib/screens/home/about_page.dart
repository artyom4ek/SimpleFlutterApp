import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  final String _avatarPath = 'assets/images/ava.jpg';
  final String _aboutMeTitle = 'About me';
  final String _aboutMeContent = 'Hi! My name is Artem and i work with Android SDK. Recently, I want to use Flutter. Have a nice day!';

  @override
  Widget build(BuildContext context) {
    final avatar = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage(_avatarPath),
        ),
      ),
    );

    final aboutTitle = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        _aboutMeTitle,
        style: TextStyle(fontSize: 28.0, color: Colors.black),
      ),
    );

    final aboutContent = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        _aboutMeContent,
        style: TextStyle(fontSize: 16.0, color: Colors.black),
      ),
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      /*decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.blue,
          Colors.lightBlueAccent,
        ]),
      ),*/
      child: Column(
        children: <Widget>[avatar, aboutTitle, aboutContent],
      ),
    );

    return Scaffold(
      body: body,
    );
  }
}