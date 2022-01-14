import 'package:flutter/material.dart';
import 'package:mybusi/log/detail_log.dart';
import 'package:mybusi/log/date_log.dart';

class ReportLog extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  width: 150,
                  height: 40,
                  padding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 50.0),

                  decoration: BoxDecoration(
                    //color: Colors.blue,
                    //border: Border.all(color: Colors.black,width: 2)
                  ),
                  child: Text('DATE',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black38,),),
                )
              ],
            ),
            Column(
              children: <Widget>[
                Container(
                  width: 150,
                  height: 40,
                  padding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 50.0),
                  decoration: BoxDecoration(
                    //color: Colors.blue,
                    //border: Border.all(color: Colors.black,width: 2)
                  ),
                  child: Text('TIME',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black38)),
                )
              ],
            ),
            Column(
              children: <Widget>[
                Container(
                  width: 110,
                  height: 40,
                  padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
                  decoration: BoxDecoration(
                    //color: Colors.blue,
                    //border: Border.all(color: Colors.black,width: 2)
                  ),
                  child: Text('',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black38)),
                )
              ],
            )
          ],
        ),
        Row(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  width: 150,
                  height: 30,
                  padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 20.0),
                  decoration: BoxDecoration(
                    //color: Colors.blue,
                    //border: Border.all(color: Colors.black,width: 2)
                  ),
                  child: Text('01-09-2021',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black)),
                )
              ],
            ),
            Column(
              children: <Widget>[
                Container(
                  width: 180,
                  height: 30,
                  padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 35.0),
                  decoration: BoxDecoration(
                    //color: Colors.blue,
                    //border: Border.all(color: Colors.black,width: 2)
                  ),
                  child: Text('00:00:00',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black)),
                )
              ],
            ),
            Column(
              children: <Widget>[
                GestureDetector(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => DetailLog())),
                  child: Text('Detail',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.green)),
                ),
              ],
            )
          ],
        ),
        Row(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  width: 150,
                  height: 30,
                  padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 20.0),
                  decoration: BoxDecoration(
                    //color: Colors.blue,
                    //border: Border.all(color: Colors.black,width: 2)
                  ),
                  child: Text('01-09-2021',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black)),
                )
              ],
            ),
            Column(
              children: <Widget>[
                Container(
                  width: 180,
                  height: 30,
                  padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 35.0),
                  decoration: BoxDecoration(
                    //color: Colors.blue,
                    //border: Border.all(color: Colors.black,width: 2)
                  ),
                  child: Text('00:00:00',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black)),
                )
              ],
            ),
            Column(
              children: <Widget>[
                GestureDetector(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => DetailLog())),
                  child: Text('Detail',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.green)),
                ),
              ],
            )
          ],
        ),
        //SizedBox(height: MediaQuery.of(context).size.height * 0.68),
        //DateLog(),
      ],
    );
  }
}