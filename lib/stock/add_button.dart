import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(width: 0),
            borderRadius: const BorderRadius.all(Radius.circular(8)),
          ),
          padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
          width: MediaQuery.of(context).size.width * 1,
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
                      padding: const EdgeInsets.only(left: 0.0,top: 0.0,right: 0.0,bottom: 0.0),
                      //primary: Colors.white,
                      textStyle: const TextStyle(fontSize: 20),
                      alignment: Alignment(MediaQuery.of(context).size.width * 0.023, 0)
                  ),
                  onPressed: (){

                  },
                  child: Text('+',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 50)),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}