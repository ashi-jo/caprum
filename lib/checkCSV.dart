//import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
//import 'package:csv/csv.dart';
//
////
//////class MyApp extends StatelessWidget {
//////  // This widget is the root of your application.
//////  @override
//////  Widget build(BuildContext context) {
//////    return MaterialApp(
//////      title: 'Flutter Demo',
//////      theme: ThemeData(
//////        // This is the theme of your application.
//////        //
//////        // Try running your application with "flutter run". You'll see the
//////        // application has a blue toolbar. Then, without quitting the app, try
//////        // changing the primarySwatch below to Colors.green and then invoke
//////        // "hot reload" (press "r" in the console where you ran "flutter run",
//////        // or simply save your changes to "hot reload" in a Flutter IDE).
//////        // Notice that the counter didn't reset back to zero; the application
//////        // is not restarted.
//////        primarySwatch: Colors.blue,
//////      ),
//////      home: TableLayout(),
//////    );
//////  }
//////}
////
//class TableLayout extends StatefulWidget {
//  @override
//  TableLayoutState createState() => TableLayoutState();
//}
//
//class TableLayoutState extends State<TableLayout> {
//  List<List<dynamic>> data = [];
//
//  loadAsset() async {
//    final myData = await rootBundle.loadString("files/books.csv");
//    List<List<dynamic>> csvTable = CsvToListConverter().convert(myData);
//    print(csvTable);
//    data = csvTable;
//
//    setState(() {});
////    print(data[1][4]);
//  }
//
//  void getList() async {
//    await loadAsset();
//    print(data[1][4]);
//  }
//
//  @override
//  void initState() {
//    super.initState();
//    getList();
//    print(data[1][4]);
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
////      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
////      floatingActionButton: FloatingActionButton(
////          child: Icon(Icons.refresh),
////          onPressed: () {
////            print(data[1][1]);
////          }),
//      appBar: AppBar(
//        title: Text("Table Layout and CSV"),
//      ),
////      body: Image.network('$one'),
//    );
////      body:
////      body: SingleChildScrollView(
////        child: Table(
////          columnWidths: {
////            0: FixedColumnWidth(100.0),
////            1: FixedColumnWidth(200.0),
////          },
////          border: TableBorder.all(width: 1.0),
////          children: data.map((item) {
////            return TableRow(
////                children: item.map((row) {
////              return Container(
////                color:
////                    row.toString().contains("NA") ? Colors.red : Colors.green,
////                child: Padding(
////                  padding: const EdgeInsets.all(8.0),
////                  child: Text(
////                    row.toString(),
////                    style: TextStyle(fontSize: 20.0),
////                  ),
////                ),
////              );
////            }).toList());
////          }).toList(),
////        ),
////      ),
////    );
////  }
////}
//  }
//}
