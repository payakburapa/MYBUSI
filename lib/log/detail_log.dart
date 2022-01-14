import 'package:flutter/material.dart';


class DetailLog extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.green, //change your color here
        ),
        backgroundColor: Colors.yellow.shade500,
        title:Text("ประวัติ",style: TextStyle(color:Colors.green,fontWeight:FontWeight.bold)),
      ),
    );
  }
}