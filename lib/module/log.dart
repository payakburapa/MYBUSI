//หน้าประวัติ
import 'package:flutter/material.dart';
import 'package:mybusi/module/main_page.dart';
import 'package:mybusi/module/listmenu.dart';
import 'package:mybusi/log/report_log.dart';
import 'package:mybusi/module/calendar.dart';

class Log extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.yellow.shade50,
      drawer: Listmenu(), // List menu left page
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.green),
        backgroundColor: Colors.yellow.shade500,
        title: Text("ประวัติ",style: TextStyle(color:Colors.green,fontWeight:FontWeight.bold)),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.home_sharp,
              color: Colors.green,
            ),
            onPressed: () {
              Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => MainPage()), (route) => false);
            },
          )
        ],
      ),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: ReportLog(),
      ),
      bottomNavigationBar: new Theme(
        data: Theme.of(context).copyWith(),
        child: Row(
          children: [
            Calendar(),
          ],
        ),
      )
    );
  }

}