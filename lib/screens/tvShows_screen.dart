import 'package:flutter/material.dart';

class TVshowsScreen extends StatelessWidget {
  static const String id = 'TVshow_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/tvShow-background.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          constraints: BoxConstraints.expand(),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  color: Colors.yellow,
                  height: 150.0,
                  child: Text('1st'),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  color: Colors.yellow,
                  height: 150.0,
                  child: Text('2nd'),
                ),
                Container(
                  color: Colors.yellow,
                  height: 150.0,
                  child: Text('3rd'),
                ),
                Container(
                  color: Colors.yellow,
                  height: 150.0,
                  child: Text('4th'),
                ),
                Container(
                  color: Colors.yellow,
                  height: 150.0,
                  child: Text('5th'),
                ),
                Container(
                  color: Colors.yellow,
                  height: 150.0,
                  child: Text('6th'),
                ),
                Container(
                  color: Colors.yellow,
                  height: 150.0,
                  child: Text('7th'),
                ),
                Container(
                  color: Colors.yellow,
                  height: 150.0,
                  child: Text('8th'),
                ),
                Container(
                  color: Colors.yellow,
                  height: 150.0,
                  child: Text('9th'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
