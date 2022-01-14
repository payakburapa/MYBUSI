import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          Container(
            // decoration: BoxDecoration(
            //     border: Border.all(width: 0),
            //     borderRadius: const BorderRadius.all(Radius.circular(0)),
            //     // color: Colors.green
            // ),
            // padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * 0.1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Container(
                      height: 75,
                      width: 200,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: Stack(
                          children: <Widget>[
                            Positioned.fill(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.orange,
                                  border: Border.all(color: Colors.black,width: 2)
                                ),
                              ),
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                //padding: const EdgeInsets.all(10.0),
                                padding: const EdgeInsets.only(left: 25.0,top: 0.0,right: 0.0,bottom: 0.0),
                                primary: Colors.white,
                                textStyle: const TextStyle(fontSize: 50),
                              ),
                              onPressed: () {
                                // ActionChip(
                                //   label:Text("Codesinsider"),
                                //   labelStyle: TextStyle(color: Colors.green),
                                //   pressElevation: 15,
                                //   side: BorderSide(color: Colors.green, width: 1),
                                // );
                                label:Text("Codesinsider");
                              },
                              child: const Text('ยกเลิก',style: TextStyle(fontWeight: FontWeight.bold)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 75,
                      width: 200,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: Stack(
                          children: <Widget>[
                            Positioned.fill(
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    border: Border.all(color: Colors.black,width: 2)
                                ),
                              ),
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                //padding: const EdgeInsets.all(10.0),
                                padding: const EdgeInsets.only(left: 55.0,top: 0.0,right: 0.0,bottom: 0.0),
                                primary: Colors.white,
                                textStyle: const TextStyle(fontSize: 50),
                              ),
                              onPressed: () {

                              },
                              child: const Text('จ่าย',style: TextStyle(fontWeight: FontWeight.bold)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
    );
  }
}