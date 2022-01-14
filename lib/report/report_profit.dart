//รายงานสรุปผลกำไร
import 'package:flutter/material.dart';
import 'package:mybusi/report/detail_profit.dart';
import 'package:mybusi/report/report_date.dart';

class ReportProfit extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 20),
            Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      width: 150,
                      height: 30,
                      padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 20.0),
                      decoration: BoxDecoration(
                        // color: Colors.blue,
                        // border: Border.all(color: Colors.black,width: 2)
                      ),
                      child: Text('(A) ขาย',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black)),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      width: 150,
                      height: 30,
                      padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 20.0),
                      decoration: BoxDecoration(
                        // color: Colors.blue,
                        // border: Border.all(color: Colors.black,width: 2)
                      ),
                      child: Text('132.70',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black)),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      width: 100,
                      height: 30,
                      padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 10.0),
                      decoration: BoxDecoration(
                        // color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black,width: 1)
                      ),
                      child: GestureDetector(
                        //onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => DetailProfit())),
                        onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailProfit(title: 'รายละเอียดขาย',))),
                        child: Text('รายละเอียด',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black)),
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      width: 150,
                      height: 30,
                      padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 20.0),
                      decoration: BoxDecoration(
                        // color: Colors.blue,
                        // border: Border.all(color: Colors.black,width: 2)
                      ),
                      child: Text('(B) ทุน',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black)),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      width: 150,
                      height: 30,
                      padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 20.0),
                      decoration: BoxDecoration(
                        // color: Colors.blue,
                        // border: Border.all(color: Colors.black,width: 2)
                      ),
                      child: Text('100.00',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black)),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      width: 100,
                      height: 30,
                      padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 10.0),
                      decoration: BoxDecoration(
                        // color: Colors.blue,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black,width: 1)
                      ),
                      child: GestureDetector(
                        //onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => DetailProfit())),
                        onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailProfit(title: 'รายละเอียดทุน',))),
                        child: Text('รายละเอียด',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black)),
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      width: 150,
                      height: 30,
                      padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 20.0),
                      decoration: BoxDecoration(
                        // color: Colors.blue,
                        // border: Border.all(color: Colors.black,width: 2)
                      ),
                      child: Text('(A)-(B) กำไร',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black)),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      width: 150,
                      height: 30,
                      padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 20.0),
                      decoration: BoxDecoration(
                        // color: Colors.blue,
                        // border: Border.all(color: Colors.black,width: 2)
                      ),
                      child: Text('100.00',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black)),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      width: 100,
                      height: 30,
                      padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 10.0),
                      decoration: BoxDecoration(
                        // color: Colors.blue,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black,width: 1)
                      ),
                      child: GestureDetector(
                        //onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => DetailProfit())),
                        onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailProfit(title: 'รายละเอียดกำไร',))),
                        child: Text('รายละเอียด',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black)),
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}