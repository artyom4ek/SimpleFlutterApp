import 'package:flutter/material.dart';

import 'welcome_page_1.dart';
import 'welcome_page_2.dart';
import 'welcome_page_3.dart';

class Welcome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Builder(
        builder: (BuildContext context) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Expanded(
                  child: TabBarView(
                    children: [
                      WelcomePage1(),
                      WelcomePage2(),
                      WelcomePage3()
                    ],
                  ),
                ),
                TabPageSelector()
              ],
            ),
          ),
        ),
      ),
    );
  }
}