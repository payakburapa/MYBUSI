import 'package:flutter/material.dart';
import 'package:mybusi/module/main_page.dart';
import 'package:mybusi/barcode/barcode_scan.dart';
import 'dart:async';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (BuildContext context) => MainPage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade300,
      body: Center(
        child: Stack(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              child: Image.asset('images/MyBusi.png',width: 360,),
            ),
            Container(
                alignment: Alignment(0.0,0.25),
                child: Text(
                  'V.1',
                  style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 16.0),
                )
            ),
            Container(
              alignment: Alignment.topCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  /// Loader Animation Widget
                  CircularProgressIndicator(
                    valueColor: new AlwaysStoppedAnimation<Color>(
                        Colors.green),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 100.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

