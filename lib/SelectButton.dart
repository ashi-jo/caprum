import 'package:flutter/material.dart';
//import 'package:recommend/MovieSuggestion.dart';
//import 'MovieSuggestion.dart';

class SelectButton extends StatelessWidget {
  SelectButton(
      {@required this.category,
      @required this.emoticon,
      @required this.backgroundColor,
      @required this.textColor,
      @required this.screen});
  final String category;
  final String emoticon;
  final Color backgroundColor;
  final Color textColor;
  final String screen;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: backgroundColor.withOpacity(0.8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35.0)),
      child: Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              emoticon,
              style: TextStyle(
                fontSize: 110.0,
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Text(
              category,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: textColor,
              ),
            ),
          ],
        ),
      ),
      onPressed: () {
        Navigator.pushNamed(context, screen);
      },
    );
  }
}
