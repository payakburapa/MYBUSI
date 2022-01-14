//sub page report of stock

import 'package:flutter/material.dart';

class ReportStock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                  child: Text('Total Value :: 400',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.grey)),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
                  child: Text('\t\t\t\t\t\t\t\t\t\t\t\t\t\tName\t\t\t\t\t\t\t\t\t\tPrice\t\t\t\t\t\t\t\t\t\tStock\t\t\t\t\t\t\t\t\t\tValue',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.grey)),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
                  child: Text('\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t(Tex)',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.grey)),
                )
              ],
            ),
            Row(
              children: <Widget>[
                //ReportTable()
                Container(
                  padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
                  width: MediaQuery.of(context).size.width * 1,
                  height: 20,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      border: Border.all(color: Colors.black,width: 0)
                  ),
                  child: Text('Not Classified',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                )
              ],
            ),
            Row(
              children: <Widget>[
                SizedBox(height: 50,),
                Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border.all(color: Colors.black,width: 2)
                      ),
                      child: Text('รูป',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white)),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                      // decoration: BoxDecoration(
                      //     //color: Colors.blue,
                      //     border: Border.all(color: Colors.black,width: 2)
                      // ),
                      child: Text('กล้วย',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black)),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 20.0),
                      // decoration: BoxDecoration(
                      //   //color: Colors.blue,
                      //     border: Border.all(color: Colors.black,width: 2)
                      // ),
                      child: Text('20\n(1.31)',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black)),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                      // decoration: BoxDecoration(
                      //   //color: Colors.blue,
                      //     border: Border.all(color: Colors.black,width: 2)
                      // ),
                      child: Text('5',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black)),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                      // decoration: BoxDecoration(
                      //   //color: Colors.blue,
                      //     border: Border.all(color: Colors.black,width: 2)
                      // ),
                      child: Text('100',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black)),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                      // decoration: BoxDecoration(
                      //   //color: Colors.blue,
                      //     border: Border.all(color: Colors.black,width: 2)
                      // ),
                      child: Text('Edit',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black)),
                    )
                  ],
                ),
              ],
            ),
            Row(
              children: <Widget>[
                //ReportTable()
                Container(
                  padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
                  width: MediaQuery.of(context).size.width * 1,
                  height: 20,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      border: Border.all(color: Colors.black,width: 0)
                  ),
                  child: Text('ยา',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                )
              ],
            ),
            Row(
              children: <Widget>[
                SizedBox(height: 50,),
                Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border.all(color: Colors.black,width: 2)
                      ),
                      child: Text('รูป',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white)),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                      // decoration: BoxDecoration(
                      //     //color: Colors.blue,
                      //     border: Border.all(color: Colors.black,width: 2)
                      // ),
                      child: Text('พารา',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black)),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 20.0),
                      // decoration: BoxDecoration(
                      //   //color: Colors.blue,
                      //     border: Border.all(color: Colors.black,width: 2)
                      // ),
                      child: Text('20\n(1.31)',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black)),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                      // decoration: BoxDecoration(
                      //   //color: Colors.blue,
                      //     border: Border.all(color: Colors.black,width: 2)
                      // ),
                      child: Text('5',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black)),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                      // decoration: BoxDecoration(
                      //   //color: Colors.blue,
                      //     border: Border.all(color: Colors.black,width: 2)
                      // ),
                      child: Text('100',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black)),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                      // decoration: BoxDecoration(
                      //   //color: Colors.blue,
                      //     border: Border.all(color: Colors.black,width: 2)
                      // ),
                      child: Text('Edit',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black)),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}