import 'package:flutter/material.dart';
import 'package:recommend/networking.dart';
import 'package:recommend/TVsuggestions.dart';

class TVshowsScreen extends StatefulWidget {
  static const String id = 'TVshow_screen';
  final tvDataa;
  TVshowsScreen({this.tvDataa});

  @override
  _TVshowsScreenState createState() => _TVshowsScreenState();
}

class _TVshowsScreenState extends State<TVshowsScreen> {
  NetworkHelper networkHelper = NetworkHelper();
  var url;
  var cast;
  var description;
  var title;
  var year;
  var genre;
  var query = 'Friends';
  var index = 0;
  var tvData;

  void updateUI(dynamic tvData, index) {
    setState(() {
      url = tvData[index]['URL'];
      cast = tvData[index]['cast'];
      description = tvData[index]['description'];
      title = tvData[index]['title'];
      year = tvData[index]['release_year'];
      genre = tvData[index]['genre'];
      print('updated');
    });
  }

  PageController controller = PageController();

  dynamic getData() async {
    tvData = await networkHelper.getTvData(query);
    updateUI(tvData, index);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (widget.tvDataa != null) {
      query = widget.tvDataa;
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
            updateUI(tvData, index);
          },
          itemBuilder: (context, index) {
            return TvSuggestion(
              url: url,
              title: title,
              genre: genre,
              year: year,
              description: description,
              cast: cast,
            );
          }),
    );
  }
}

//TVsuggestion(url: url, title: title, genre: genre, year: year, description: description, cast: cast),
