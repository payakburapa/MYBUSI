//หน้าหลักรวมเมนู
import 'package:flutter/material.dart';
import 'package:mybusi/module/checkout.dart';
import 'package:mybusi/module/stock.dart';
import 'package:mybusi/module/report.dart';
import 'package:mybusi/module/setting.dart';
import 'package:mybusi/module/log.dart';
import 'package:mybusi/module/help.dart';

class MainPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.yellow.shade300,
      body: SingleChildScrollView(
        child:Column(
          children: [
            Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 0.0, top: 100.0, right: 0.0, bottom: 50.0),
                      // decoration: BoxDecoration(
                      //   color: Colors.black,
                      // ),
                      child: (Image.asset('images/MyBusi.png',width: 250,)),
                    )
                  ],
              ),
            ),
            Container(
              height: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      GestureDetector(
                          //onTap: () => Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => Checkout()), (route) => false),
                          //onTap: () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => Checkout()),),
                          onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => Checkout()),),
                          child: Image.asset('images/Accounting.png',width: 80,height: 80,)
                      ),
                      Container(
                          child: Text('ชำระเงินลูกค้า',style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20.0),),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      GestureDetector(
                          //onTap: () => Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => Stock()), (route) => false),
                          //onTap: () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => Stock())),
                          onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => Stock())),
                          child:Image.asset('images/stock.png',width: 80,height: 80,)
                      ),
                      Container(
                        child: Text('คลังสินค้า',style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20.0),),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      GestureDetector(
                          //onTap: () => Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => Report()), (route) => false),
                          //onTap: () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => Report())),
                          onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => Report())),
                          child:Image.asset('images/Report.png',width: 80,height: 80,)
                      ),
                      Container(
                        child: Text('รายงาน',style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20.0),),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      GestureDetector(
                          //onTap: () => Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => Setting()), (route) => false),
                          //onTap: () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => Setting())),
                          onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => Setting())),
                          child:Image.asset('images/setting.png',width: 80,height: 80,)
                      ),
                      Container(
                        child: Text('ตั้งค่า',style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20.0),),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      GestureDetector(
                          //onTap: () => Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => Log()), (route) => false),
                          //onTap: () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => Log())),
                          onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => Log())),
                          child:Image.asset('images/log.png',width: 80,height: 80,)
                      ),
                      Container(
                        child: Text('ประวัติ',style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20.0),),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      GestureDetector(
                          //onTap: () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => Help())),
                          onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => Help())),
                          child:Image.asset('images/help.png',width: 80,height: 80,)
                      ),
                      Container(
                        child: Text('ช่วยเหลือ',style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20.0),),
                      )
                    ],
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