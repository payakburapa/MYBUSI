import 'package:flutter/material.dart';
import 'package:mybusi/checkout/button.dart';

class TabProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          //width: MediaQuery.of(context).size.width * 1,
          //height: MediaQuery.of(context).size.height*0.82,
          //color: Colors.blueAccent[400],
          child: Column(
            children: <Widget>[
              SizedBox(height: 20,),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          height: 30,
                          width: 200,
                          child: Text('1.ชื่อสินค้า ::',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                        ),
                        SizedBox(height: 15,),
                        Container(
                          height: 30,
                          width: 200,
                          child: Text('ภาษี ::',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.end),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          height: 30,
                          width: 50,
                          decoration: BoxDecoration(/*color: Colors.orange,*//*border: Border.all(color: Colors.black,width: 2)*/),
                          child: TextFormField(
                            initialValue: '2',
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
                        SizedBox(height: 15,),
                        Container(
                          height: 30,
                          width: 50,
                          child: TextFormField(
                            initialValue: '2%',
                            decoration: InputDecoration(
                              // labelText: 'Label text',
                              // errorText: 'Error message',
                              border: OutlineInputBorder(),
                              // suffixIcon: Icon(
                              //   Icons.error,
                              // ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          child: Text('X'),
                        ),
                        SizedBox(height: 15,),
                        Container(
                          height: 30,
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          height: 30,
                          width: 100,
                          child: TextFormField(
                            initialValue: '200',
                            decoration: InputDecoration(
                              // labelText: 'Label text',
                              // errorText: 'Error message',
                              border: OutlineInputBorder(),
                              // suffixIcon: Icon(
                              //   Icons.error,
                              // ),
                            ),
                            // validator: (value) {
                            //   if (value.isEmpty) {
                            //     return '2';
                            //   }
                            //   return null;
                            // },
                          ),
                        ),
                        SizedBox(height: 15,),
                        Container(
                          height: 30,
                          width: 100,
                          //color: Colors.green,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 0.5,
                //color: Colors.red,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 0.1,
                //color: Colors.greenAccent,
                child: Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width * 1,
                          height: MediaQuery.of(context).size.height * 0.1,
                          //decoration: BoxDecoration(/*color: Colors.orange,*/border: Border.all(color: Colors.black,width: 2)),
                          child: TextFormField(
                            //initialValue: '200',
                            decoration: InputDecoration(
                              // hintText: "memo::",
                              labelText: 'MEMO::',
                              // errorText: 'Error message',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // Container(
              //   alignment: Alignment.bottomCenter,
              //   child: Button(),
              // )
            ],
          ),
        ),
    );
  }
}