import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mybusi/stock/add_button.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';


class EditStock extends StatefulWidget {
  @override
  _TabEditStock createState() => _TabEditStock();
}

class _TabEditStock extends State<EditStock> {
  //String _chosenValue;
  String _scanBarcode = '';

  @override
  void initState() {
    super.initState();
  }

  Future<void> scanBarcodeNormal() async {
    String barcodeScanRes;
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode("#ff6666", "Cancel", true, ScanMode.BARCODE);
      print(barcodeScanRes);
    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
    }
    if (!mounted) return;

    setState(() {
      _scanBarcode = barcodeScanRes;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                      width: MediaQuery.of(context).size.width * 0.30,
                      height: MediaQuery.of(context).size.height * 0.06,
                      child: Text('ชื่อสินค้า :: ',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600)),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                      width: MediaQuery.of(context).size.width * 0.7,
                      height: MediaQuery.of(context).size.height * 0.06,
                      child: TextFormField(
                        //initialValue: '200',
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
                  ],
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
                      width: MediaQuery.of(context).size.width * 0.30,
                      height: MediaQuery.of(context).size.height * 0.06,
                      child: Text('บาร์โคด :: ',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600)),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                      width: MediaQuery.of(context).size.width * 0.45,
                      height: MediaQuery.of(context).size.height * 0.06,
                      child: TextFormField(
                        initialValue: '$_scanBarcode',
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
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width * 0.25,
                      height: MediaQuery.of(context).size.height * 0.06,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(0),
                        child: Stack(
                          children: <Widget>[
                            Positioned.fill(
                              child: Container(
                                decoration: BoxDecoration(
                                  //color: Colors.orange,
                                  // border: Border.all(color: Colors.black,width: 0)
                                ),
                              ),
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                primary: Colors.white,
                                textStyle: const TextStyle(fontSize: 18),
                              ),
                              onPressed: () => scanBarcodeNormal(),
                              child: Image.asset('images/barecode.png',width: 80,height: 90,),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                      width: MediaQuery.of(context).size.width * 0.30,
                      height: MediaQuery.of(context).size.height * 0.06,
                      child: Text('หมวดหมู่ :: ',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600)),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                      width: MediaQuery.of(context).size.width * 0.6,
                      height: MediaQuery.of(context).size.height * 0.06,
                      child: DropDownTypeProduct(),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.centerRight,
                      padding: EdgeInsets.symmetric(vertical:  0.0, horizontal: 10),
                      width: MediaQuery.of(context).size.width * 1,
                      height: MediaQuery.of(context).size.height * 0.06,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: Stack(
                          children: <Widget>[
                            Positioned.fill(
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    border: Border.all(color: Colors.black,width: 1)
                                ),
                              ),
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                padding: const EdgeInsets.only(left: 10.0,top: 0.0,right: 10.0,bottom: 0.0),
                                primary: Colors.white,
                                textStyle: const TextStyle(fontSize: 18),
                              ),
                              onPressed: () {

                              },
                              child: const Text('เพิ่ม/แก้ไข',style: TextStyle(fontWeight: FontWeight.bold,)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                      width: MediaQuery.of(context).size.width * 0.30,
                      height: MediaQuery.of(context).size.height * 0.05,
                      child: Text('ราคาทุน :: ',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600)),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                      width: MediaQuery.of(context).size.width * 0.45,
                      height: MediaQuery.of(context).size.height * 0.06,
                      child: TextFormField(
                        //initialValue: '200',
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
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                        width: MediaQuery.of(context).size.width * 0.25,
                        height: MediaQuery.of(context).size.height * 0.06,
                        child: Text(' ต่อชิ้น',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600)),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                      width: MediaQuery.of(context).size.width * 0.30,
                      height: MediaQuery.of(context).size.height * 0.05,
                      child: Text('ราคาขาย :: ',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600)),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                      width: MediaQuery.of(context).size.width * 0.45,
                      height: MediaQuery.of(context).size.height * 0.06,
                      child: TextFormField(
                        //initialValue: '200',
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
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                      width: MediaQuery.of(context).size.width * 0.25,
                      height: MediaQuery.of(context).size.height * 0.06,
                      child: Text(' ต่อชิ้น',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600)),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
                      width: MediaQuery.of(context).size.width * 0.30,
                      height: MediaQuery.of(context).size.height * 0.06,
                      child: Text('ภาษี (%) :: ',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600)),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                      width: MediaQuery.of(context).size.width * 0.7,
                      height: MediaQuery.of(context).size.height * 0.06,
                      child: TextFormField(
                        //initialValue: '200',
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
                  ],
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
                      width: MediaQuery.of(context).size.width * 0.30,
                      height: MediaQuery.of(context).size.height * 0.06,
                      child: Text('จำนวน :: ',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600)),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                      width: MediaQuery.of(context).size.width * 0.7,
                      height: MediaQuery.of(context).size.height * 0.06,
                      child: TextFormField(
                        //initialValue: '200',
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
                  ],
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
                      width: MediaQuery.of(context).size.width * 0.30,
                      height: MediaQuery.of(context).size.height * 0.06,
                      child: Text('เพิ่มเติม :: ',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600)),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                      width: MediaQuery.of(context).size.width * 0.7,
                      height: MediaQuery.of(context).size.height * 0.1,
                      child: TextFormField(
                        //initialValue: '200',
                        minLines: 1,
                        maxLines: 3,
                        keyboardType: TextInputType.multiline,
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
                  ],
                ),
              ],
            ),
            //SizedBox(height: 20,),
            Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 4, color: Colors.white),
                        borderRadius: const BorderRadius.all(Radius.circular(8)),
                      ),
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
                      // width: MediaQuery.of(context).size.width * 0.20,
                      // height: MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.width * 0.20,
                      height: MediaQuery.of(context).size.height * 0.1,
                      child: Text('รูป :: ',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600)),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 2),
                        borderRadius: const BorderRadius.all(Radius.circular(8)),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
                      width: MediaQuery.of(context).size.width * 0.35,
                      height: MediaQuery.of(context).size.height * 0.15,
                      child: Image.asset('images/camera.png',width: 100,height: 100,),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 4,color: Colors.white),
                            borderRadius: const BorderRadius.all(Radius.circular(8)),
                          ),
                          padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 30.0),
                          width: MediaQuery.of(context).size.width * 0.45,
                          height: MediaQuery.of(context).size.height * 0.05,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(4),
                            child: Stack(
                              children: <Widget>[
                                Positioned.fill(
                                  child:Container(
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        border: Border.all(color: Colors.black,width: 1)
                                    ),
                                  ),
                                ),
                                TextButton(
                                  style: TextButton.styleFrom(
                                    padding: const EdgeInsets.only(left: 35.0,top: 0.0,right: 30.0,bottom: 0.0),
                                    primary: Colors.white,
                                    textStyle: const TextStyle(fontSize: 18),
                                  ),
                                  onPressed: (){

                                  },
                                  child: const Text('เลือก',style: TextStyle(fontWeight: FontWeight.bold,)),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 4, color: Colors.white),
                            borderRadius: const BorderRadius.all(Radius.circular(8)),
                          ),
                          padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 30.0),
                          width: MediaQuery.of(context).size.width * 0.45,
                          height: MediaQuery.of(context).size.height * 0.05,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(4),
                            child: Stack(
                              children: <Widget>[
                                Positioned.fill(
                                  child:Container(
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        border: Border.all(color: Colors.black,width: 1)
                                    ),
                                  ),
                                ),
                                TextButton(
                                  style: TextButton.styleFrom(
                                    padding: const EdgeInsets.only(left: 30.0,top: 0.0,right: 30.0,bottom: 0.0),
                                    primary: Colors.white,
                                    textStyle: const TextStyle(fontSize: 18),
                                  ),
                                  onPressed: (){

                                  },
                                  child: const Text('ถ่ายรูป',style: TextStyle(fontWeight: FontWeight.bold,)),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 4, color: Colors.white),
                            borderRadius: const BorderRadius.all(Radius.circular(8)),
                          ),
                          padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 30.0),
                          width: MediaQuery.of(context).size.width * 0.45,
                          height: MediaQuery.of(context).size.height * 0.05,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(4),
                            child: Stack(
                              children: <Widget>[
                                Positioned.fill(
                                  child:Container(
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        border: Border.all(color: Colors.black,width: 1)
                                    ),
                                  ),
                                ),
                                TextButton(
                                  style: TextButton.styleFrom(
                                    padding: const EdgeInsets.only(left: 35.0,top: 0.0,right: 30.0,bottom: 0.0),
                                    primary: Colors.white,
                                    textStyle: const TextStyle(fontSize: 18),
                                  ),
                                  onPressed: (){

                                  },
                                  child: const Text('ลบรูป',style: TextStyle(fontWeight: FontWeight.bold,)),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
            // SizedBox(height: 11,),
            // AddButton()  //ปุ่ม Add
            // EditButton()  //ปุ่ม Edit(Save and Delete)
            // Row(
            //   children: <Widget>[
            //     //AddButton()
            //     //EditButton()
            //   ],
            // )
          ],
        ),
      ),
      bottomNavigationBar: new Theme(
          data: Theme.of(context).copyWith(),
          child:Row(
            children: [
              AddButton()  //ปุ่ม Add
            ],
          )
      ),
    );
  }
}

class DropDownTypeProduct extends StatefulWidget {
  @override
  _DropDownType createState() => _DropDownType();
}  // DropDown List Type Product

class _DropDownType extends State<DropDownTypeProduct> {
  String _chosenValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(0.0),
          child: DropdownButton<String>(
            value: _chosenValue,
            //elevation: 5,
            style: TextStyle(color: Colors.black),

            items: <String>[
              'เครื่องดืม',
              'ยา',
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            hint: Text(
              "ไม่จัดประเภท",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.w600),
            ),
            onChanged: (String value) {
              setState(() {
                _chosenValue = value;
              });
            },
          ),
        ),
      ),
    );
  }
} // DropDown List Type Product