import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:recommend/networking.dart';
import 'package:recommend/gameSuggestions.dart';

class GamesScreen extends StatefulWidget {
  static const String id = 'Games_screen';
  final data;
  GamesScreen({this.data});

  @override
  _GamesScreenState createState() => _GamesScreenState();
}

class _GamesScreenState extends State<GamesScreen> {
  NetworkHelper networkHelper = NetworkHelper();
  var url;
  var description;
  var title;
  var genre;
  var developer;
  var ageRating;
  var rating;
  var query = 'Diamond-Rush';
  var index = 0;
  var gameData;

  void updateUI(dynamic gameData, index) {
    setState(() {
      url = gameData[index]['Icon URL'];
      description = gameData[index]['Description'];
      title = gameData[index]['Name'];
      genre = gameData[index]['Genres'];
      developer = gameData[index]['Developer'];
      ageRating = gameData[index]['Age Rating'];
      rating = gameData[index]['Average User Rating'];
      print('updated');
    });
  }

  PageController controller = PageController();

  dynamic getData() async {
    gameData = await networkHelper.getGameData(query);
    updateUI(gameData, index);
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
            updateUI(gameData, index);
          },
          itemBuilder: (context, index) {
            return GameSuggestions(
              url: url,
              title: title,
              genre: genre,
              ageRating: ageRating,
              description: description,
              developer: developer,
              rating: rating,
            );
          }),
    );
  }
}
