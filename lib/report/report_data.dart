import 'package:flutter/material.dart';
import 'package:mybusi/report/report_pie.dart';
import 'package:mybusi/report/report_bar.dart';

class ReportData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.only(left: 0,top: 0,right: 0,bottom: 0),
                child: Table(
                  defaultColumnWidth: FixedColumnWidth(150),
                  // border: TableBorder.all(
                  //     color: Colors.black,
                  //     style: BorderStyle.solid,
                  //     width: 1
                  // ),
                  children: [
                    TableRow(
                        children: [
                          Column(
                            children: [
                              Text('ข้อมูลการขาย', style: TextStyle(fontSize: 20.0,fontWeight:FontWeight.bold))
                            ],
                          )
                        ]
                    )
                  ],
                ),
              ),
              Container(
                child: ReportPie(),// graph pie
              ),
              SizedBox(height: 20,),
              Container(
                child: ReportBar(),// graph bar
              ),
            ],
          ),
        ),
      ),
    );
  }
}