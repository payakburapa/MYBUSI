//หน้ารายงาน
import 'package:flutter/material.dart';
import 'package:mybusi/module/main_page.dart';
import 'package:mybusi/module/listmenu.dart';
import 'package:mybusi/report/report_data.dart';
import 'package:mybusi/report/report_profit.dart';
import 'package:mybusi/report/report_sales.dart';
import 'package:mybusi/module/calendar.dart';

class Report extends StatelessWidget{
  TabBar get _tabBar => TabBar(
    indicatorColor: Colors.green,
    tabs: [
      Tab(child: Text('ขาย',style:TextStyle(color: Colors.green,fontWeight:FontWeight.bold,fontSize: 17)),),
      Tab(child: Text('ข้อมูล',style:TextStyle(color: Colors.green,fontWeight:FontWeight.bold,fontSize: 17)),),
      Tab(child: Text('กำไร',style:TextStyle(color: Colors.green,fontWeight:FontWeight.bold,fontSize: 17)),),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.yellow.shade50,
        drawer: Listmenu(), // List menu left page
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.green),
          backgroundColor: Colors.yellow.shade500,
          title: Text("รายงาน",style: TextStyle(color:Colors.green,fontWeight:FontWeight.bold)),
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
          bottom: PreferredSize(
            preferredSize: _tabBar.preferredSize,
            child: ColoredBox(
              color: Colors.yellow.shade200,
              child: _tabBar,
            ),
          ),
        ),
        body: Center(
          child: TabBarView(
            children: <Widget>[
              Container(
                child: ReportSales(),
              ),
              Container(
                child: ReportData(),
              ),
              Container(
                child: ReportProfit(),
              ),
            ],
          ),
        ),
        bottomNavigationBar: new Theme(
          data: Theme.of(context).copyWith(),
          child: Row(
            children: [
              Calendar(),
            ],
          ),
        )
      ),
    );
  }
}