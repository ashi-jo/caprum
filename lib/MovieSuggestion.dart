import 'package:flutter/material.dart';
import 'constants.dart';
import 'networking.dart';
import 'screens/movie_screen.dart';

class MovieSuggestions extends StatefulWidget {
  const MovieSuggestions({

    @required this.url,
    @required this.title,
    @required this.genre,
    @required this.year,
    @required this.description,
  });

  final dynamic url;
  final dynamic title;
  final dynamic genre;
  final dynamic year;
  final dynamic description;

  @override
  _MovieSuggestionsState createState() => _MovieSuggestionsState();
}

class _MovieSuggestionsState extends State<MovieSuggestions> {
  Color colour = Colors.grey;
  MovieScreen movieScreen = MovieScreen();
  NetworkHelper networkHelper = NetworkHelper();

  @override
  Widget build(BuildContext context) {
    return Container(
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
                    placeholder: 'images/movie-poster-placeholder.png',
                    image: '${widget.url}',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Text(
              '${widget.title}',
              textAlign: TextAlign.center,
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
                      '${widget.genre}  (${widget.year})',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        letterSpacing: 5,
                        color: Color(0xff410B03),
                      ),
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    Text(
                      '${widget.description}',
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
            FloatingActionButton(
              backgroundColor: Colors.transparent,
              onPressed: () async {
                setState(() {
                  colour = Colors.red.shade900;
                });
                var query = widget.title;
                print('liked');
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return MovieScreen(data: query);
                }));
              },
              child: Icon(
                Icons.favorite,
                size: 70.0,
                color: colour,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}
