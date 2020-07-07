import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recommend/MovieSuggestion.dart';
import 'package:recommend/networking.dart';
import 'package:recommend/MovieSuggestion.dart';

class MovieScreen extends StatefulWidget {
  static const String id = 'Movie_screen';
  final data;
  MovieScreen({this.data});
  @override
  _MovieScreenState createState() => _MovieScreenState();
}

class _MovieScreenState extends State<MovieScreen> {
  NetworkHelper networkHelper = NetworkHelper();
  var url;
  var description;
  var title;
  var year;
  var genre;
  var query = 'Les Invisibles ';
  var index = 0;
  var movieData;

  void updateUI(dynamic movieData, index) {
    setState(() {
      url = movieData[index]['imageurl'];
      description = movieData[index]['plot'];
      title = movieData[index]['title'];
      year = movieData[index]['year'];
      genre = movieData[index]['genres'];
      print('updated');
    });
  }

  PageController controller = PageController();

  dynamic getData() async {
    movieData = await networkHelper.getMovieData(query);
    updateUI(movieData, index);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (widget.data != null) {
      query = widget.data;
      print(query);
    }
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          controller: controller,
          onPageChanged: (index) {
            index = index + 1;
            updateUI(movieData, index);
          },
          itemBuilder: (context, index) {
            return MovieSuggestions(
              url: url,
              title: title,
              genre: genre,
              year: year,
              description: description,
            );
          }),
    );
  }
}

//MovieSuggestion(url: url, title: title, genre: genre, year: year, description: description),

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
