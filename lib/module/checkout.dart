//หน้าชำระเงินลูกค้า
import 'package:flutter/material.dart';
import 'package:mybusi/module/main_page.dart';
import 'package:mybusi/module/listmenu.dart';
import 'package:mybusi/checkout/tabproduct.dart';
import 'package:mybusi/checkout/tabsummary.dart';
import 'package:mybusi/checkout/button.dart';

class Checkout extends StatelessWidget{
  TabBar get _tabBar => TabBar(
    indicatorColor: Colors.green,
    tabs: [
      Tab(child: Text('สรุป',style:TextStyle(color: Colors.green,fontWeight:FontWeight.bold,fontSize: 17)),),
      Tab(child: Text('สินค้า',style:TextStyle(color: Colors.green,fontWeight:FontWeight.bold,fontSize: 17)),),
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
          title: Text("ชำระเงินลูกค้า",style: TextStyle(color:Colors.green,fontWeight:FontWeight.bold)),
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
        resizeToAvoidBottomInset: false,
        body: Center(
          child: TabBarView(
            children: <Widget>[
              Container(
                child: TabSummary(),
              ),
              Container(
                child: TabProduct(),
              ),
            ],
          ),
        ),
        bottomNavigationBar: new Theme(
          data: Theme.of(context).copyWith(),
          child:Row(
            children: [
              //Calendar(),
              Button()
            ],
          )
        ),
      ),
    );
  }

}