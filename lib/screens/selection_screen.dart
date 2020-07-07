import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recommend/screens/books_screen.dart';
import 'package:recommend/screens/games_screen.dart';
import 'package:recommend/screens/movie_screen.dart';
import 'package:recommend/screens/tvShows_screen.dart';

import '../constants.dart';
import 'package:recommend/SelectButton.dart';
import 'package:flutter/services.dart';

class SelectionScreen extends StatefulWidget {
  static const String id = 'Selection_screen';
  @override
  _SelectionScreenState createState() => _SelectionScreenState();
}

class _SelectionScreenState extends State<SelectionScreen> {
//  CheckStuff checkStuff = CheckStuff();
  @override
//  void initState() {
//    super.initState();
//    checkStuff.getList();
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CAPRUM',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xffF7F3D4),
            fontSize: 25.0,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/wallpaper-movie.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
            child: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsets.fromLTRB(15.0, 40.0, 15.0, 15.0),
                      child: SelectButton(
                        category: 'MOVIES',
                        emoticon: '🍿',
                        backgroundColor: kMoviesBackgroundColor,
                        textColor: kMoviesTextColor,
                        screen: MovieScreen.id,
//                        screen: 'TableLayout',
                      ),
                    ),
                  ),
//                    SizedBox(
//                      width: 15.0,
//                    ),
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsets.fromLTRB(15.0, 40.0, 15.0, 15.0),
                      child: SelectButton(
                        category: 'TV SHOWS',
                        emoticon: '📺',
                        backgroundColor: kTVshowsBackgroundColor,
                        textColor: kTVshowsTextColor,
                        screen: TVshowsScreen.id,
                      ),
                    ),
                  ),
                ],
              ),
            ),
//              SizedBox(
//                height: 15.0,
//              ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 40.0),
                      child: SelectButton(
                        category: 'BOOKS',
                        emoticon: '📚',
                        backgroundColor: kBooksBackgroundColor,
                        textColor: kBooksTextColor,
                        screen: BooksScreen.id,
                      ),
                    ),
                  ),
//                    SizedBox(
//                      width: 15.0,
//                    ),
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 40.0),
                      child: SelectButton(
                        category: 'GAMES',
                        emoticon: '🎲',
                        backgroundColor: kGamesBackgroundColor,
                        textColor: kGamesTextColor,
                        screen: GamesScreen.id,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}

//'🍿'
//Color(0xff180201) background
//Color(0xff9A2812) textColor
//                color: Color(0xff240401).withOpacity(0.7),
//                color: Colors.black.withOpacity(0.6),
//Center(
//child: Container(
//height: 350.0,
//width: 350.0,
//child: selectButton(),
//),
//),
