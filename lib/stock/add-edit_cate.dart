//หน้าคลังสินค้า
import 'package:flutter/material.dart';
import 'package:mybusi/module/main_page.dart';
import 'package:mybusi/module/listmenu.dart';
import 'package:mybusi/stock/edit_stock.dart';
import 'package:mybusi/stock/report_stock.dart';

class AddEditCate extends StatelessWidget{
  TabBar get _tabBar => TabBar(
    indicatorColor: Colors.green,
    tabs: [
      Tab(child: Text('เพิ่มหมวดหมู่',style:TextStyle(color: Colors.green,fontWeight:FontWeight.bold,fontSize: 17)),),
      Tab(child: Text('แก้ไข',style:TextStyle(color: Colors.green,fontWeight:FontWeight.bold,fontSize: 17)),),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.green),
          backgroundColor: Colors.yellow.shade500,
          title: const Text('เพิ่ม/แก้ไข หมวดหมู่',style: TextStyle(color:Colors.green,fontWeight:FontWeight.bold)),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.home_sharp,color: Colors.green,),
                onPressed: (){
                  Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => MainPage()), (route) => false);
                }
            ),
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
                //child: EditStock(),
                child: Text('เพิ่ม')
              ),
              Container(
                //child: ReportStock(),
                child: Text('แก้ไข')
              ),
            ],
          ),
        ),
        bottomNavigationBar: new Theme(
            data: Theme.of(context).copyWith(),
            child:Row(
              children: [
                //Calendar(),
                //Button()
              ],
            )
        ),
      ),
    );
  }
}