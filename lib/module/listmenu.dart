//หน้า listmenu ด้านซ้ายมือ
import 'package:flutter/material.dart';
import 'package:mybusi/module/checkout.dart';
import 'package:mybusi/module/stock.dart';
import 'package:mybusi/module/report.dart';
import 'package:mybusi/module/setting.dart';
import 'package:mybusi/module/log.dart';
import 'package:mybusi/module/help.dart';

class Listmenu extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.yellow.shade100,
              ),
              child: Image.asset('images/MyBusi.png'),
            ),
            ListTile(
              leading: Image.asset('images/Accounting.png',width: 60),
              title: const Text('ชำระเงินลูกค้า',style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold)),
              onTap: () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => Checkout())),
            ),
            SizedBox(width: 0.0, height: 30.0,),
            ListTile(
              leading: Image.asset('images/stock.png',width: 60),
              title: const Text('คลังสินค้า',style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold)),
              onTap: () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => Stock())),
            ),
            SizedBox(width: 0.0, height: 30.0,),
            ListTile(
              leading: Image.asset('images/Report.png',width: 60),
              title: const Text('รายงาน',style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold)),
              onTap: () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => Report())),
            ),
            SizedBox(width: 0.0, height: 30.0,),
            ListTile(
              leading: Image.asset('images/setting.png',width: 60),
              title: const Text('ตั้งค่า',style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold)),
              onTap: () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => Setting())),
            ),
            SizedBox(width: 0.0, height: 30.0,),
            ListTile(
              leading: Image.asset('images/log.png',width: 60),
              title: const Text('ประวัติ',style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold)),
              onTap: () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => Log())),
            ),
            SizedBox(width: 0.0, height: 30.0,),
            ListTile(
              leading: Image.asset('images/help.png',width: 60),
              title: const Text('ช่วยเหลือ',style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold)),
              onTap: () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => Help())),
            ),
          ],
        ),
      );
  }

}