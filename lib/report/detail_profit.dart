import 'package:flutter/material.dart';

class DetailProfit extends StatelessWidget{
  String title;
  DetailProfit({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.green, //change your color here
        ),
        backgroundColor: Colors.yellow.shade500,
        title:Text('$title' ,style: TextStyle(color:Colors.green,fontWeight:FontWeight.bold)),
      ),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 10,),
              Container(
                margin: EdgeInsets.all(0),
                child: Table(
                  defaultColumnWidth: FixedColumnWidth(120.0),
                  children: [
                    TableRow(
                      children: [
                        Column(children:[Text('Name', style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold,color: Colors.grey))]),
                        Column(children:[Text('Price(Sum)', style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold,color: Colors.grey))]),
                        Column(children:[Text('Quantity', style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold,color: Colors.grey))]),
                      ]
                    )
                  ]
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
                        Column(children:[Text('ยาเหลือง', style: TextStyle(fontSize: 16.0))]),
                        Column(children:[Text('40', style: TextStyle(fontSize: 16.0))]),
                        Column(children:[Text('2', style: TextStyle(fontSize: 16.0))]),
                      ],
                    ),
                    TableRow(
                      children: [
                        Column(children:[Text('ยาแก้ไอ', style: TextStyle(fontSize: 16.0))]),
                        Column(children:[Text('40', style: TextStyle(fontSize: 16.0))]),
                        Column(children:[Text('1', style: TextStyle(fontSize: 16.0))]),
                      ]
                    ),
                    TableRow(
                      children: [
                        Column(children:[Text('สเปร์', style: TextStyle(fontSize: 16.0))]),
                        Column(children:[Text('20', style: TextStyle(fontSize: 16.0))]),
                        Column(children:[Text('1', style: TextStyle(fontSize: 16.0))]),
                      ]
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
