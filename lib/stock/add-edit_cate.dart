//หน้าเพิ่มและแก้ไข category

import 'package:flutter/material.dart';
import 'package:mybusi/checkout/button.dart';
import 'package:mybusi/module/main_page.dart';
import 'package:mybusi/stock/add_button.dart';
import 'package:mybusi/database/category/service_category.dart';
import 'package:mybusi/database/category/model_category.dart';

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
                child: AddCate(),
              ),
              Container(
                child: EditCate(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AddCate extends StatelessWidget {

  var category = ModelCategory();
  var categoryService = ServiceCategory();

  var catename = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height*0.05),
            Text("เพิ่มหมวดหมู่สินค้า",style:TextStyle(fontWeight:FontWeight.bold,fontSize: 18)),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              width: MediaQuery.of(context).size.width * 0.7,
              height: MediaQuery.of(context).size.height * 0.06,
              child: TextField(
                controller: catename,
                //initialValue: '200',
                decoration: InputDecoration(
                  // labelText: 'Label text',
                  // errorText: 'Error message',
                  border: OutlineInputBorder(),
                  // suffixIcon: Icon(
                  //   Icons.error,
                  // ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Row(
        children: <Widget>[
          Container(
            constraints: BoxConstraints.expand(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 0.08,
            ),
            decoration: BoxDecoration(
                color: Colors.green,
                border: Border.all(color: Colors.black,width: 2)
            ),
            child: TextButton(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.only(left: 0.0,top: 0.0,right: 0.0,bottom: 0.0),
              ),
              onPressed: () async {
                category.catename = catename.text;

                var CateInsert = await categoryService.saveCategory(category);
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => AddEditCate())
                // );
              },
              child: Text("+" , style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 50))
            ),
          )
        ],
      ),
    );
  }
}

class EditCate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(

    );
  }
}