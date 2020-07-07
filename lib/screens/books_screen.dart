import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recommend/networking.dart';
import 'package:page_turn/page_turn.dart';
import 'package:like_button/like_button.dart';
import 'package:recommend/bookSuggestion.dart';

class BooksScreen extends StatefulWidget {
  static const String id = 'Books_screen';
  final data;
  BooksScreen({this.data});

  @override
  _BooksScreenState createState() => _BooksScreenState();
}

class _BooksScreenState extends State<BooksScreen> {
  NetworkHelper networkHelper = NetworkHelper();
  var author;
  var rating;
  var publicationYear;
  var title;
  var query = '1984';
  var index = 0;
  var bookData;

  void updateUI(dynamic bookData, index) {
    setState(() {
      author = bookData[index]['authors'];
      rating = bookData[index]['average_rating'];
      publicationYear = bookData[index]['original_publication_year'];
      title = bookData[index]['title'];
      print('updated');
    });
  }

  PageController controller = PageController();

  dynamic getBookData() async {
    bookData = await networkHelper.getBookData(query);
    updateUI(bookData, index);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (widget.data != null) {
      query = widget.data;
    }
    getBookData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          controller: controller,
          onPageChanged: (index) {
            index = index + 1;
            updateUI(bookData, index);
          },
          itemBuilder: (context, index) {
            return BookSuggestion(
              title: title,
              author: author,
              publicationYear: publicationYear,
              rating: rating,
//              onLikeButtonTapped: onLikeButtonTapped(isLiked),
            );
          }),
    );
  }
}

//PageView(
//onPageChanged: (index) {
//index = index + 1;
//updateUI(bookData, index);
//},
//children: <Widget>[
//BookSuggestion(
//title: title,
//author: author,
//publicationYear: publicationYear,
//rating: rating,
//),
//BookSuggestion(
//title: title,
//author: author,
//publicationYear: publicationYear,
//rating: rating,
//),
//BookSuggestion(
//title: title,
//author: author,
//publicationYear: publicationYear,
//rating: rating,
//),
//BookSuggestion(
//title: title,
//author: author,
//publicationYear: publicationYear,
//rating: rating,
//),
//BookSuggestion(
//title: title,
//author: author,
//publicationYear: publicationYear,
//rating: rating,
//),
//BookSuggestion(
//title: title,
//author: author,
//publicationYear: publicationYear,
//rating: rating,
//),
//BookSuggestion(
//title: title,
//author: author,
//publicationYear: publicationYear,
//rating: rating,
//),
//BookSuggestion(
//title: title,
//author: author,
//publicationYear: publicationYear,
//rating: rating,
//),
//BookSuggestion(
//title: title,
//author: author,
//publicationYear: publicationYear,
//rating: rating,
//),
//BookSuggestion(
//title: title,
//author: author,
//publicationYear: publicationYear,
//rating: rating,
//),
//BookSuggestion(
//title: title,
//author: author,
//publicationYear: publicationYear,
//rating: rating,
//),
//BookSuggestion(
//title: title,
//author: author,
//publicationYear: publicationYear,
//rating: rating,
//),
//BookSuggestion(
//title: title,
//author: author,
//publicationYear: publicationYear,
//rating: rating,
//),
//BookSuggestion(
//title: title,
//author: author,
//publicationYear: publicationYear,
//rating: rating,
//),
//BookSuggestion(
//title: title,
//author: author,
//publicationYear: publicationYear,
//rating: rating,
//),
//],
//),

//PageView.builder(
//controller: controller,
//itemBuilder: (context, index) {
//updateUI(bookData, index);
//return Container(
//child: Center(
//child: Text(
//title,
//textAlign: TextAlign.center,
//),
//),
//);
//}),

//Column(
//crossAxisAlignment: CrossAxisAlignment.stretch,
//children: <Widget>[
//Expanded(
//child: Center(
//child: Text(
//title != null ? title : "ain't got no title",
//textAlign: TextAlign.center,
//),
//),
//),
//Expanded(
//child: RaisedButton(
//onPressed: () async {
//print('yay');
//var booksData = await networkHelper.getData(query);
//index = index + 1;
//print(index);
//updateUI(booksData, index);
//},
//),
//)
//],
//),
