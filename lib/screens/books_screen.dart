import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recommend/networking.dart';
import 'package:page_turn/page_turn.dart';
import 'package:like_button/like_button.dart';

class BooksScreen extends StatefulWidget {
  static const String id = 'Books_screen';
  @override
  _BooksScreenState createState() => _BooksScreenState();
}

class _BooksScreenState extends State<BooksScreen> {
  final _controller = GlobalKey<PageTurnState>();

  List<String> list = ['Page1', 'Page2', 'Page3', 'Page4', 'Page5'];
  var colour = Colors.grey;

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
      body: Center(
        child: PageTurn(
          key: _controller,
          backgroundColor: Colors.white,
          showDragCutoff: false,
          lastPage: Container(
            child: Center(
              child: Text('Last Page!'),
            ),
          ),
          children: <Widget>[
            for (var i = 0; i < list.length; i++)
              Stack(
                children: <Widget>[
//                      Image.asset('images/movie1.jpg'),
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/books-background.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    constraints: BoxConstraints.expand(),
                  ),
                  Center(
                    child: Text(
                      list[i],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0,
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      FloatingActionButton(
                        backgroundColor: Colors.deepPurple,
                        child: Icon(
                          Icons.favorite,
                          size: 50.0,
                          color: colour,
                        ),
                        onPressed: () {
                          setState(() {
                            colour = Colors.red;
                          });
                          print('liked');
                        },
                      ),
                    ],
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}

// D8:D0:90:4F:F9:EA
