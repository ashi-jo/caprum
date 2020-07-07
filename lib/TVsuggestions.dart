import 'package:flutter/material.dart';
import 'networking.dart';
import 'screens/tvShows_screen.dart';

class TvSuggestion extends StatefulWidget {
  TvSuggestion({
    @required this.url,
    @required this.title,
    @required this.genre,
    @required this.year,
    @required this.description,
    @required this.cast,
  });

  final dynamic url;
  final dynamic title;
  final dynamic genre;
  final dynamic year;
  final dynamic description;
  final dynamic cast;

  @override
  _TvSuggestionState createState() => _TvSuggestionState();
}

class _TvSuggestionState extends State<TvSuggestion> {
  Color colour = Colors.grey;
  TVshowsScreen tVshowsScreen = TVshowsScreen();
  NetworkHelper networkHelper = NetworkHelper();
  @override
  Widget build(BuildContext context) {
    return Center(
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
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(20.0, 70.0, 20.0, 23.0),
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
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
//                    color: Colors.cyanAccent,
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                '${widget.genre}  (${widget.year})',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16.0,
                  letterSpacing: 4,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  '${widget.description}',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20.0,
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                'Cast: ${widget.cast}',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.blue.shade900,
                ),
              ),
              FloatingActionButton(
                backgroundColor: Colors.transparent,
                onPressed: () async {
                  setState(() {
                    colour = Colors.blue.shade900;
                  });
                  var query = widget.title;
                  print('liked');
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return TVshowsScreen(tvDataa: query);
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
      ),
    );
  }
}
