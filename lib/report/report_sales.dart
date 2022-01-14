//page sub report of sales
import 'package:flutter/material.dart';
import 'package:mybusi/report/report_date.dart';

class ReportSales extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 15),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 0,top: 0,right: 0,bottom: 0),
                child: Table(
                  defaultColumnWidth: FixedColumnWidth(100),
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
                            Text('Sales', style: TextStyle(fontSize: 20.0,fontWeight:FontWeight.bold))
                          ],
                        )
                      ]
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(0),
                child: Table(
                  defaultColumnWidth: FixedColumnWidth(180.0),
                  border: TableBorder.all(
                      color: Colors.black,
                      style: BorderStyle.solid,
                      width: 1
                  ),
                  children: [
                    TableRow(
                      children: [
                        Column(
                            children:[
                              Text('Total\n(Tax)', style: TextStyle(fontSize: 16.0))
                            ]
                        ),
                        Column(
                            children:[
                              Text('142.00\n(9.30)', style: TextStyle(fontSize: 16.0))
                            ]
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 0,top: 0,right: 0,bottom: 0),
                child: Table(
                  defaultColumnWidth: FixedColumnWidth(100),
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
                              Text('Details', style: TextStyle(fontSize: 20.0,fontWeight:FontWeight.bold))
                            ],
                          )
                        ]
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(0),
                child: Table(
                  defaultColumnWidth: FixedColumnWidth(120.0),
                  border: TableBorder.all(
                      color: Colors.black,
                      style: BorderStyle.solid,
                      width: 1
                  ),
                  children: [
                    TableRow(
                      children: [
                        Column(
                            children:[
                              Text('Name', style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold,color: Colors.grey))
                            ]
                        ),
                        Column(
                            children:[
                              Text('Price(Sum)', style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold,color: Colors.grey))
                            ]
                        ),
                        Column(
                            children:[
                              Text('Quantity', style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold,color: Colors.grey))
                            ]
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Column(
                            children:[
                              Text('ยาเหลือง', style: TextStyle(fontSize: 16.0))
                            ]
                        ),
                        Column(
                            children:[
                              Text('40', style: TextStyle(fontSize: 16.0))
                            ]
                        ),
                        Column(
                            children:[
                              Text('2', style: TextStyle(fontSize: 16.0))
                            ]
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Column(
                            children:[
                              Text('ยาแก้ไอ', style: TextStyle(fontSize: 16.0))
                            ]
                        ),
                        Column(
                            children:[
                              Text('40', style: TextStyle(fontSize: 16.0))
                            ]
                        ),
                        Column(
                            children:[
                              Text('2', style: TextStyle(fontSize: 16.0))
                            ]
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Column(
                            children:[
                              Text('สเปร์', style: TextStyle(fontSize: 16.0))
                            ]
                        ),
                        Column(
                            children:[
                              Text('40', style: TextStyle(fontSize: 16.0))
                            ]
                        ),
                        Column(
                            children:[
                              Text('2', style: TextStyle(fontSize: 16.0))
                            ]
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Column(
                            children:[
                              Text('Hair wax', style: TextStyle(fontSize: 16.0))
                            ]
                        ),
                        Column(
                            children:[
                              Text('40', style: TextStyle(fontSize: 16.0))
                            ]
                        ),
                        Column(
                            children:[
                              Text('2', style: TextStyle(fontSize: 16.0))
                            ]
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              //SizedBox(height: MediaQuery.of(context).size.height * 0.56),
              // SizedBox(height: 370),
              // ReportDate(),
            ],
          ),
        ),
      ),
    );
  }
}