import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class NameProduct extends StatelessWidget{
  String title;
  NameProduct({Key key, this.title}) : super(key: key);

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
                    defaultColumnWidth: FixedColumnWidth(MediaQuery.of(context).size.width * 0.20),
                    children: [
                      TableRow(
                          children: [
                            Column(children:[Text('', style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold,color: Colors.grey))]),
                            Column(children:[Text('Name', style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold,color: Colors.grey))]),
                            Column(children:[Text('Barcode', style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold,color: Colors.grey))]),
                            Column(children:[Text('Price', style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold,color: Colors.grey))]),
                            Column(children:[Text('Stock', style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold,color: Colors.grey))]),
                          ]
                      )
                    ]
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
                width: MediaQuery.of(context).size.width * 1,
                height: 20,
                decoration: BoxDecoration(
                    color: Colors.green,
                    border: Border.all(color: Colors.black,width: 0)
                ),
                child: Text('Not Classified',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
              ),
              Container(
                margin: EdgeInsets.all(0),
                child: Table(
                  defaultColumnWidth: FixedColumnWidth(MediaQuery.of(context).size.width * 0.20),
                  border: TableBorder.all(
                      color: Colors.white,
                      style: BorderStyle.solid,
                      width: 3
                  ),
                  children: [
                    TableRow(
                      children: [
                        Column(
                            children:[
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    border: Border.all(color: Colors.black,width: 1)
                                ),
                                child: Text('รูป',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white)),
                              )
                            ]
                        ),
                        Column(
                            children:[
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
                                child: Text('กล้วย', style: TextStyle(fontSize: 15.0,color: Colors.black)),
                              )
                            ]
                        ),
                        Column(
                            children:[
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
                                child: Text('0000000', style: TextStyle(fontSize: 15.0,color: Colors.black)),
                              )

                            ]
                        ),
                        Column(
                            children:[
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
                                child: Text('20', style: TextStyle(fontSize: 15.0,color: Colors.black)),
                              )
                            ]
                        ),
                        Column(
                            children:[
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
                                child: Text('5', style: TextStyle(fontSize: 15.0,color: Colors.black)),
                              )
                            ]
                        ),
                      ]
                    ),
                    TableRow(
                        children: [
                          Column(
                              children:[
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                  decoration: BoxDecoration(
                                      color: Colors.blue,
                                      border: Border.all(color: Colors.black,width: 1)
                                  ),
                                  child: Text('รูป',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white)),
                                )
                              ]
                          ),
                          Column(
                              children:[
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
                                  child: Text('มังคุด', style: TextStyle(fontSize: 15.0,color: Colors.black)),
                                )
                              ]
                          ),
                          Column(
                              children:[
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
                                  child: Text('0000000', style: TextStyle(fontSize: 15.0,color: Colors.black)),
                                )

                              ]
                          ),
                          Column(
                              children:[
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
                                  child: Text('20', style: TextStyle(fontSize: 15.0,color: Colors.black)),
                                )
                              ]
                          ),
                          Column(
                              children:[
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
                                  child: Text('5', style: TextStyle(fontSize: 15.0,color: Colors.black)),
                                )
                              ]
                          ),
                        ]
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
                width: MediaQuery.of(context).size.width * 1,
                height: 20,
                decoration: BoxDecoration(
                    color: Colors.green,
                    border: Border.all(color: Colors.black,width: 0)
                ),
                child: Text('ยา',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
              ),
              Container(
                margin: EdgeInsets.all(0),
                child: Table(
                  defaultColumnWidth: FixedColumnWidth(MediaQuery.of(context).size.width * 0.20),
                  border: TableBorder.all(
                      color: Colors.white,
                      style: BorderStyle.solid,
                      width: 3
                  ),
                  children: [
                    TableRow(
                        children: [
                          Column(
                              children:[
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                  decoration: BoxDecoration(
                                      color: Colors.blue,
                                      border: Border.all(color: Colors.black,width: 1)
                                  ),
                                  child: Text('รูป',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white)),
                                )
                              ]
                          ),
                          Column(
                              children:[
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
                                  child: Text('พาราเซตาม่อน', style: TextStyle(fontSize: 15.0,color: Colors.black)),
                                )
                              ]
                          ),
                          Column(
                              children:[
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
                                  child: Text('0000000', style: TextStyle(fontSize: 15.0,color: Colors.black)),
                                )

                              ]
                          ),
                          Column(
                              children:[
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
                                  child: Text('20', style: TextStyle(fontSize: 15.0,color: Colors.black)),
                                )
                              ]
                          ),
                          Column(
                              children:[
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
                                  child: Text('5', style: TextStyle(fontSize: 15.0,color: Colors.black)),
                                )
                              ]
                          ),
                        ]
                    ),
                    TableRow(
                        children: [
                          Column(
                              children:[
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                  decoration: BoxDecoration(
                                      color: Colors.blue,
                                      border: Border.all(color: Colors.black,width: 1)
                                  ),
                                  child: Text('รูป',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white)),
                                )
                              ]
                          ),
                          Column(
                              children:[
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
                                  child: Text('ยาแก้อักเสบ', style: TextStyle(fontSize: 15.0,color: Colors.black)),
                                )
                              ]
                          ),
                          Column(
                              children:[
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
                                  child: Text('0000000', style: TextStyle(fontSize: 15.0,color: Colors.black)),
                                )

                              ]
                          ),
                          Column(
                              children:[
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
                                  child: Text('20', style: TextStyle(fontSize: 15.0,color: Colors.black)),
                                )
                              ]
                          ),
                          Column(
                              children:[
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
                                  child: Text('5', style: TextStyle(fontSize: 15.0,color: Colors.black)),
                                )
                              ]
                          ),
                        ]
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
