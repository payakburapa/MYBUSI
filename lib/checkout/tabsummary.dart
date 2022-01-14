import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mybusi/checkout/nameproduct.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';


class TabSummary extends StatefulWidget {
  @override
  _Summary createState() => _Summary();
}

class _Summary extends State<TabSummary> {
  String _scanBarcode = 'Unknown';

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
            SizedBox(height: 20,),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: Stack(
                          children: <Widget>[
                            Positioned.fill(
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: Colors.lightGreen,
                                ),
                              ),
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                //padding: const EdgeInsets.all(10.0),
                                padding: const EdgeInsets.only(left: 30.0,top: 0.0,right: 30.0,bottom: 0.0),
                                primary: Colors.black,
                                textStyle: const TextStyle(fontSize: 18),
                              ),
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (context){
                                      return NameProduct(title: 'รายชื่อสินค้า');
                                    }
                                );
                              },
                              child: const Text('รายชื่อสินค้า',style: TextStyle(fontWeight: FontWeight.bold)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(0),
                          child: Stack(
                            children: <Widget>[
                              Positioned.fill(
                                child: Container(
                                  decoration: BoxDecoration(
                                      //color: Colors.orange,
                                      border: Border.all(color: Colors.black,width: 0)
                                  ),
                                ),
                              ),
                              TextButton(
                                style: TextButton.styleFrom(
                                  //padding: const EdgeInsets.all(10.0),
                                  padding: const EdgeInsets.only(left: 0.0,top: 0.0,right: 0.0,bottom: 0.0),
                                  primary: Colors.white,
                                  textStyle: const TextStyle(fontSize: 18),
                                ),
                                onPressed: () => scanBarcodeNormal(),
                                child: Image.asset('images/barecode.png',width: 150),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 30,),
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 4, color: Colors.lightGreen),
                borderRadius: const BorderRadius.all(Radius.circular(8)),
              ),
              child: Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      SizedBox(height: 20,),
                      Container(
                          padding: EdgeInsets.only(left: 80.0,top: 0.0,right: 0.0,bottom: 0.0),
                          child: Text('รวม :: ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                      ),
                      Container(
                          padding: EdgeInsets.only(left: 20.0,top: 0.0,right: 0.0,bottom: 0.0),
                          child: Text('ราคาสินค้า :: ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                      ),
                      Container(
                          padding: EdgeInsets.only(left: 30.0,top: 0.0,right: 0.0,bottom: 0.0),
                          child: Text('ราคาภาษี :: ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                      ),
                      SizedBox(height: 20,),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      SizedBox(height: 20,),
                      Container(
                          padding: EdgeInsets.only(left: 100.0,top: 0.0,right: 0.0,bottom: 0.0),
                          child: Text('฿ 1000',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                      ),
                      Container(
                          padding: EdgeInsets.only(left: 100.0,top: 0.0,right: 0.0,bottom: 0.0),
                          child: Text('฿ 1000',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                      ),
                      Container(
                          padding: EdgeInsets.only(left: 100.0,top: 0.0,right: 0.0,bottom: 0.0),
                          child: Text('฿ 1000',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                      ),
                      SizedBox(height: 20,),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 4, color: Colors.lightGreen),
                borderRadius: const BorderRadius.all(Radius.circular(8)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      SizedBox(height: 20,),
                      Container(
                          padding: EdgeInsets.only(left: 20.0,top: 0.0,right: 0.0,bottom: 0.0),
                          child: Text('วันที่ซื้อ :: ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10.0,top: 0.0,right: 0.0,bottom: 0.0),
                        child: Text('เวลาที่ซื้อ :: ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(height: 20,),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      SizedBox(height: 20,),
                      Container(
                        padding: EdgeInsets.only(left: 15.0,top: 0.0,right: 0.0,bottom: 0.0),
                        child: Text('DD - MM - YYYY ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 15.0,top: 0.0,right: 0.0,bottom: 0.0),
                        child: Text('AM/PM  HH:MM:SS',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(height: 20,),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 4, color: Colors.lightGreen),
                borderRadius: const BorderRadius.all(Radius.circular(8)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      SizedBox(height: 20,),
                      Container(
                        padding: EdgeInsets.only(left: 5.0,top: 0.0,right: 0.0,bottom: 0.0),
                        child: Text('เลขที่ใบเสร็จ::',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(height: 20,),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      SizedBox(height: 20,),
                      Container(
                        padding: EdgeInsets.only(left: 0.0,top: 0.0,right: 0.0,bottom: 0.0),
                        child: Text('YYMMDDHHMMSSAM/PM',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(height: 20,),
                    ],
                  )
                ],
              ),
            ),
            // SizedBox(height: 145,),
            // Container(
            //   child: Button()
            // ),
          ],
        ),
      ),
    );
  }
}