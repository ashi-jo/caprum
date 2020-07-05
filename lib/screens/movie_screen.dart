import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:recommend/constants.dart';

class MovieScreen extends StatefulWidget {
  static const String id = 'Movie_screen';
  @override
  _MovieScreenState createState() => _MovieScreenState();
}

class _MovieScreenState extends State<MovieScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/movie3.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(20.0, 130.0, 20.0, 23.0),
//                  padding: EdgeInsets.all(0.0),
                child: Container(
                  width: 212.0,
                  height: 292.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black,
                          offset: Offset(0.0, 1.0), //(x,y)
                          blurRadius: 6.0)
                    ],
                    border: Border.all(
                        color: Colors.black,
                        width: 0.2,
                        style: BorderStyle.solid),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: FadeInImage.assetNetwork(
                      fadeInCurve: Curves.bounceIn,
                      placeholder: 'images/books-background.jpg',
                      image:
                          'https://m.media-amazon.com/images/M/MV5BNGVjNWI4ZGUtNzE0MS00YTJmLWE0ZDctN2ZiYTk2YmI3NTYyXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_UX182_CR0,0,182,268_AL__QL50.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Text(
                'JOKER',
                style: kHeaderTextStyle,
              ),

              // margin: EdgeInsets.symmetric(horizontal: 18.0),
              Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      SizedBox(
                        height: 3.0,
                      ),
                      Text(
                        'Crime|Drama|Thriller  (2019)',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                          letterSpacing: 2.5,
                          color: Color(0xff410B03),
                        ),
                      ),
                      SizedBox(
                        height: 25.0,
                      ),
                      Text(
                        'In Gotham City, mentally troubled comedian Arthur Fleck is disregarded and mistreated by society. He then embarks on a downward spiral of revolution and bloody crime. This path brings him face-to-face with his alter-ego: the Joker. In Gotham City, mentally troubled comedian Arthur Fleck is disregarded and mistreated by society. He then embarks on a downward spiral of revolution and bloody crime. This path brings him face-to-face with his alter-ego: the Joker. In Gotham City, mentally troubled comedian Arthur Fleck is disregarded and mistreated by society. He then embarks on a downward spiral of revolution and bloody crime. This path brings him face-to-face with his alter-ego: the Joker. In Gotham City, mentally troubled comedian Arthur Fleck is disregarded and mistreated by society. He then embarks on a downward spiral of revolution and bloody crime. This path brings him face-to-face with his alter-ego: the Joker. In Gotham City, mentally troubled comedian Arthur Fleck is disregarded and mistreated by society. He then embarks on a downward spiral of revolution and bloody crime. This path brings him face-to-face with his alter-ego: the Joker. In Gotham City, mentally troubled comedian Arthur Fleck is disregarded and mistreated by society. He then embarks on a downward spiral of revolution and bloody crime. This path brings him face-to-face with his alter-ego: the Joker. In Gotham City, mentally troubled comedian Arthur Fleck is disregarded and mistreated by society. He then embarks on a downward spiral of revolution and bloody crime. This path brings him face-to-face with his alter-ego: the Joker. In Gotham City, mentally troubled comedian Arthur Fleck is disregarded and mistreated by society. He then embarks on a downward spiral of revolution and bloody crime. This path brings him face-to-face with his alter-ego: the Joker.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20.0,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// 'https://images.gr-assets.com/books/1474154022s/3.jpg'
//NetworkImage(
//'https://m.media-amazon.com/images/M/MV5BNGVjNWI4ZGUtNzE0MS00YTJmLWE0ZDctN2ZiYTk2YmI3NTYyXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_UX182_CR0,0,182,268_AL__QL50.jpg'),

//
//Container(
//height: 600.0,
//width: 400.0,
//decoration: BoxDecoration(
//borderRadius: BorderRadius.circular(30.0),
//boxShadow: [
//BoxShadow(
//color: Colors.black,
//offset: Offset(0.0, 1.0), //(x,y)
//blurRadius: 6.0)
//],
//border: Border.all(
//color: Colors.black,
//width: 0.2,
//style: BorderStyle.solid),
//image: DecorationImage(
//image: null,
//fit: BoxFit.fill,
//),
//),
//),

//Column(
//mainAxisAlignment: MainAxisAlignment.center,
//children: <Widget>[
//Padding(
//padding: EdgeInsets.fromLTRB(20.0, 130.0, 20.0, 23.0),
////                  padding: EdgeInsets.all(0.0),
//child: Container(
//width: 212.0,
//height: 292.0,
//decoration: BoxDecoration(
//borderRadius: BorderRadius.circular(10.0),
//boxShadow: [
//BoxShadow(
//color: Colors.black,
//offset: Offset(0.0, 1.0), //(x,y)
//blurRadius: 6.0)
//],
//border: Border.all(
//color: Colors.black,
//width: 0.2,
//style: BorderStyle.solid),
//),
//child: ClipRRect(
//borderRadius: BorderRadius.circular(10.0),
//child: FadeInImage.assetNetwork(
//fadeInCurve: Curves.bounceIn,
//placeholder: 'images/books-background.jpg',
//image:
//'https://m.media-amazon.com/images/M/MV5BNGVjNWI4ZGUtNzE0MS00YTJmLWE0ZDctN2ZiYTk2YmI3NTYyXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_UX182_CR0,0,182,268_AL__QL50.jpg',
//fit: BoxFit.fill,
//),
//),
//),
//),
//Text(
//'JOKER',
//style: kHeaderTextStyle,
//),
//
//// margin: EdgeInsets.symmetric(horizontal: 18.0),
//Container(
//child: Padding(
//padding: const EdgeInsets.symmetric(horizontal: 15.0),
//child: Column(
//mainAxisSize: MainAxisSize.min,
//children: <Widget>[
//SizedBox(
//height: 3.0,
//),
//Text(
//'Crime|Drama|Thriller  (2019)',
//style: TextStyle(
//fontWeight: FontWeight.bold,
//fontSize: 16.0,
//letterSpacing: 2.5,
//color: Color(0xff410B03),
//),
//),
//SizedBox(
//height: 25.0,
//),
//Text(
//'In Gotham City, mentally troubled comedian Arthur Fleck is disregarded and mistreated by society. He then embarks on a downward spiral of revolution and bloody crime. This path brings him face-to-face with his alter-ego: the Joker. In Gotham City, mentally troubled comedian Arthur Fleck is disregarded and mistreated by society. He then embarks on a downward spiral of revolution and bloody crime. This path brings him face-to-face with his alter-ego: the Joker. In Gotham City, mentally troubled comedian Arthur Fleck is disregarded and mistreated by society. He then embarks on a downward spiral of revolution and bloody crime. This path brings him face-to-face with his alter-ego: the Joker. In Gotham City, mentally troubled comedian Arthur Fleck is disregarded and mistreated by society. He then embarks on a downward spiral of revolution and bloody crime. This path brings him face-to-face with his alter-ego: the Joker. In Gotham City, mentally troubled comedian Arthur Fleck is disregarded and mistreated by society. He then embarks on a downward spiral of revolution and bloody crime. This path brings him face-to-face with his alter-ego: the Joker. In Gotham City, mentally troubled comedian Arthur Fleck is disregarded and mistreated by society. He then embarks on a downward spiral of revolution and bloody crime. This path brings him face-to-face with his alter-ego: the Joker. In Gotham City, mentally troubled comedian Arthur Fleck is disregarded and mistreated by society. He then embarks on a downward spiral of revolution and bloody crime. This path brings him face-to-face with his alter-ego: the Joker. In Gotham City, mentally troubled comedian Arthur Fleck is disregarded and mistreated by society. He then embarks on a downward spiral of revolution and bloody crime. This path brings him face-to-face with his alter-ego: the Joker.',
//textAlign: TextAlign.center,
//style: TextStyle(
//fontWeight: FontWeight.w600,
//fontSize: 20.0,
//color: Colors.black,
//),
//),
//],
//),
//),
//),
//],
//),
