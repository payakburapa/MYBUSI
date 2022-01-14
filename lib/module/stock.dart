//หน้าคลังสินค้า
import 'package:flutter/material.dart';
import 'package:mybusi/module/main_page.dart';
import 'package:mybusi/module/listmenu.dart';
import 'package:mybusi/stock/edit_stock.dart';
import 'package:mybusi/stock/report_stock.dart';

class Stock extends StatelessWidget{
  TabBar get _tabBar => TabBar(
    indicatorColor: Colors.green,
    tabs: [
      Tab(child: Text('แก้ไข',style:TextStyle(color: Colors.green,fontWeight:FontWeight.bold,fontSize: 17)),),
      Tab(child: Text('รายการ',style:TextStyle(color: Colors.green,fontWeight:FontWeight.bold,fontSize: 17)),),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        //backgroundColor: Colors.yellow.shade100,
        drawer: Listmenu(), // List menu left page
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.green),
          backgroundColor: Colors.yellow.shade500,
          title: Text("คลังสินค้า",style: TextStyle(color:Colors.green,fontWeight:FontWeight.bold)),
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
                child: EditStock(),
              ),
              Container(
                child: ReportStock(),
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