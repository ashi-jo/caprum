import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class GamesScreen extends StatefulWidget {
  static const String id = 'Games_screen';
  @override
  _GamesScreenState createState() => _GamesScreenState();
}

class _GamesScreenState extends State<GamesScreen> {
  Future<bool> onLikeButtonTapped(bool isLiked) async {
    /// send your request here
    // final bool success= await sendRequest();

    /// if failed, you can do nothing
    // return success? !isLiked:isLiked;
    isLiked = true;
    print('liked');

    return isLiked;
  }

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
            child: LikeButton(
              mainAxisAlignment: MainAxisAlignment.start,
//                        crossAxisAlignment: CrossAxisAlignment.end,
              onTap: onLikeButtonTapped,
              size: 100.0,
//                        circleColor: CircleColor(
//                            start: Color(0xff00ddff), end: Color(0xff0099cc)),
//                        bubblesColor: BubblesColor(
//                          dotPrimaryColor: Color(0xff33b5e5),
//                          dotSecondaryColor: Color(0xff0099cc),
//                        ),
              likeBuilder: (bool isLiked) {
                return Icon(
                  Icons.favorite,
                  color: isLiked ? Colors.red.shade900 : Colors.grey,
                  size: 50.0,
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

//
