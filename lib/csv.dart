//import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
//
//
//class CheckStuff {
//  List<List<dynamic>> data = [];
//  String one;
//
//  loadAsset() async {
//    final myData = await rootBundle.loadString("files/joshi.csv");
//    List<List<dynamic>> csvTable = CsvToListConverter().convert(myData);
////    print(csvTable);
//    data = csvTable;
//
////    setState(() {});
////    print(data[1][4]);
//  }
//
//  void getList() async {
//    await loadAsset();
//    one = data[2][16];
////    print(one);
//  }
//}
