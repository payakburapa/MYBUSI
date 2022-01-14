import 'package:flutter/material.dart';

class EditButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 0),
                borderRadius: const BorderRadius.all(Radius.circular(8)),
              ),
              padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.height * 0.07,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(0),
                child: Stack(
                  children: <Widget>[
                    Positioned.fill(
                      child:Container(
                        decoration: BoxDecoration(
                            color: Colors.green,
                            border: Border.all(color: Colors.black,width: 2)
                        ),
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                          alignment: Alignment(MediaQuery.of(context).size.width * 0.04, 0)
                      ),
                      onPressed: (){

                      },
                      child: Image.asset('images/bin.png',width: 40,height: 40,),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 0),
                borderRadius: const BorderRadius.all(Radius.circular(8)),
              ),
              padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.height * 0.07,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(0),
                child: Stack(
                  children: <Widget>[
                    Positioned.fill(
                      child:Container(
                        decoration: BoxDecoration(
                            color: Colors.green,
                            border: Border.all(color: Colors.black,width: 2)
                        ),
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                          alignment: Alignment(MediaQuery.of(context).size.width * 0.04, 0)
                      ),
                      onPressed: (){

                      },
                      child: Image.asset('images/save.png',width: 40,height: 40,),
                    ),
                  ],
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}