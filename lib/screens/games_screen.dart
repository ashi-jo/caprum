import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:recommend/networking.dart';

class GamesScreen extends StatefulWidget {
  static const String id = 'Games_screen';
  @override
  _GamesScreenState createState() => _GamesScreenState();
}

class _GamesScreenState extends State<GamesScreen> {
  NetworkHelper networkHelper = NetworkHelper('this');
//  Future<bool> onLikeButtonTapped(bool isLiked) async {
//    /// send your request here
//    // final bool success= await sendRequest();
//
//    /// if failed, you can do nothing
//    // return success? !isLiked:isLiked;
//    isLiked = true;
//    print('liked');
//
//    return isLiked;
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/games-background.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          constraints: BoxConstraints.expand(),
          child: Container(
            height: 300.0,
            width: 350.0,
            child: RaisedButton(
              onPressed: () {
                networkHelper.getData();
              },
            ),
          ),
        ),
      ),
    );
  }
}

//
