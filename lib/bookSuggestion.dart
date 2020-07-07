import 'package:flutter/material.dart';
import 'screens/books_screen.dart';
import 'package:recommend/networking.dart';
import 'package:like_button/like_button.dart';

class BookSuggestion extends StatefulWidget {
  const BookSuggestion({
    @required this.title,
    @required this.author,
    @required this.publicationYear,
    @required this.rating,
//    @required this.onLikeButtonTapped,
//    @required this.query,
  });

  final dynamic title;
  final dynamic author;
  final dynamic publicationYear;
  final dynamic rating;
//  final Function(bool) onLikeButtonTapped;

  @override
  _BookSuggestionState createState() => _BookSuggestionState();
}

class _BookSuggestionState extends State<BookSuggestion> {
  Color colour = Colors.grey;
  BooksScreen booksScreen = BooksScreen();
  NetworkHelper networkHelper = NetworkHelper();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/books-background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '${widget.title}',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 50.0,
                fontWeight: FontWeight.bold,
//                      color: Color(0xffEE986E),
              ),
            ),
            SizedBox(
              height: 1.0,
            ),
            Text(
              'by : ${widget.author}',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.w400,
                fontFamily: 'Pacifico',
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Year : ${widget.publicationYear}',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 4,
//                          color: Color(0xff24143A),
                  ),
                ),
                SizedBox(
                  width: 45.0,
                ),
                Text(
                  'rating: ${widget.rating} ⭐',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 4,
                  ),
                ),
              ],
            ),
//
            FloatingActionButton(
              backgroundColor: Colors.transparent,
              onPressed: () async {
                setState(() {
//                  colour = Color(0xff24143A);
                  colour = Colors.deepPurple.shade700;
                });
                var query = widget.title;
                print('liked');
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return BooksScreen(data: query);
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

//  final dynamic query;

//  Future<bool> onLikeButtonTapped(bool isLiked) async {
//    /// send your request here
//    // final bool success= await sendRequest();
////    var qUery = query;
//  var bookData =
//
//
//
//    /// if failed, you can do nothing
//    // return success? !isLiked:isLiked;
//    isLiked = true;
//    print('liked');
//
//    return isLiked;
//  }
