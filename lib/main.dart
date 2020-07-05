import 'package:flutter/material.dart';
import 'screens/selection_screen.dart';
import 'screens/movie_screen.dart';
import 'screens/books_screen.dart';
import 'screens/games_screen.dart';
import 'screens/tvShows_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      initialRoute: 'Selection_screen',
      routes: {
        SelectionScreen.id: (context) => SelectionScreen(),
        MovieScreen.id: (context) => MovieScreen(),
        TVshowsScreen.id: (context) => TVshowsScreen(),
        BooksScreen.id: (context) => BooksScreen(),
        GamesScreen.id: (context) => GamesScreen(),
//        'TableLayout': (context) => TableLayout(),
      },
    );
  }
}
