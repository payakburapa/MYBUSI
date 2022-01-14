import 'package:flutter/material.dart';

class Calendar extends StatefulWidget {
  @override
  _Calendar createState() => _Calendar();
}

class _Calendar extends State<Calendar> {
  /// Which holds the selected date
  /// Defaults to today's date.
  DateTime selectedDateSince = DateTime.now();
  DateTime selectedDateFinal = DateTime.now();

  _selectDateSince(BuildContext context) async {
    final DateTime picked = await showDatePicker(
                context: context,
                initialDate: selectedDateSince,
                firstDate: DateTime(2000),
                lastDate: DateTime(2025),
                builder: (context, child) {
                  return Theme(
                    data: ThemeData.light().copyWith(
                      colorScheme: ColorScheme.light(
                        primary: Colors.yellow.shade300, // header background color
                        onPrimary: Colors.black, // header text color
                        onSurface: Colors.black, // body text color
                      ),
                      textButtonTheme: TextButtonThemeData(
                        style: TextButton.styleFrom(
                          primary: Colors.black, // button text color
                        ),
                      ),
                    ),
                    child: child,
                  );
                }
    );
    if (picked != null && picked != selectedDateSince)
      setState(() {
        selectedDateSince = picked;
      });
  }
  _selectDateFinal(BuildContext context) async {
    final DateTime picked = await showDatePicker(
                context: context,
                initialDate: selectedDateFinal,
                firstDate: DateTime(2000),
                lastDate: DateTime(2025),
                builder: (context, child) {
                  return Theme(
            data: ThemeData.light().copyWith(
              colorScheme: ColorScheme.light(
                primary: Colors.yellow.shade300, // header background color
                onPrimary: Colors.black, // header text color
                onSurface: Colors.black, // body text color
              ),
              textButtonTheme: TextButtonThemeData(
                style: TextButton.styleFrom(
                  primary: Colors.black, // button text color
                ),
              ),
            ),
            child: child,
          );
                }
    );
    if (picked != null && picked != selectedDateFinal)
      setState(() {
        selectedDateFinal = picked;
      });
  }

  //TextEditingController _controller = TextEditingController();
  String inputString = "";

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(width: 1),
              borderRadius: const BorderRadius.all(Radius.circular(0)),
              color: Colors.green
          ),
          padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
          width: MediaQuery.of(context).size.width * 1,
          height: MediaQuery.of(context).size.height * 0.07,
          child: Row(
            children: <Widget>[
              Column(
                children: [
                  Container(
                    // decoration: BoxDecoration(
                    //   border: Border.all(width: 1,color: Colors.white)
                    // ),
                    padding: EdgeInsets.only(left: 10.0,top: 10.0,right: 5.0,bottom: 0.0),
                    width: MediaQuery.of(context).size.width * 0.28,
                    height: 47,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Stack(
                        children: <Widget>[
                          Positioned.fill(
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade700,
                                  border: Border.all(color: Colors.black,width: 0)
                              ),
                            ),
                          ),
                          TextButton(
                            style: TextButton.styleFrom(
                              padding: const EdgeInsets.only(left: 15.0,top: 0.0,right: 0.0,bottom: 0.0),
                              //primary: Colors.white,
                              textStyle: const TextStyle(fontSize: 20),
                              //alignment: Alignment(MediaQuery.of(context).size.width * 0.5, 0)
                            ),
                            onPressed: (){
                              // showDialog(
                              //   context: context,
                              //   builder: (BuildContext context) {
                              //     return AlertDialog(
                              //       // title: Text("Setting String"),
                              //       // content: TextFormField(
                              //       //   controller: _controller,
                              //       // ),
                              //       actions: <Widget>[
                              //         // FlatButton(
                              //         //   child: Text("OK"),
                              //         //   onPressed: () {
                              //         //     Navigator.pop(context, _controller.text);
                              //         //   },
                              //         // )
                              //       ],
                              //     );
                              //   },
                              // ).then((val) {
                              //    setState(() {inputString = val;});
                              // }
                              // );
                              showDialog(
                                context: context, builder: (BuildContext context) {
                                return SimpleDialog(

                                );
                              },
                              ).then((value) => null);
                            },
                            child: Text('this month',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 15)),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 10.0,top: 10.0,right: 0.0,bottom: 0.0),
                    width: MediaQuery.of(context).size.width * 0.28,
                    height: 45,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Stack(
                        children: <Widget>[
                          Positioned.fill(
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade700,
                                  border: Border.all(color: Colors.black,width: 0)
                              ),
                            ),
                          ),
                          TextButton(
                            style: TextButton.styleFrom(
                              padding: const EdgeInsets.only(left: 15.0,top: 0.0,right: 0.0,bottom: 0.0),
                              //primary: Colors.white,
                              textStyle: const TextStyle(fontSize: 20),
                              //alignment: Alignment(MediaQuery.of(context).size.width * 0.5, 0)
                            ),
                            onPressed: () => _selectDateSince(context),
                            child: Text("${selectedDateSince.toLocal()}".split(' ')[0],style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 15)),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    // decoration: BoxDecoration(
                    //     border: Border.all(width: 1,color: Colors.white)
                    // ),
                      padding: EdgeInsets.only(left: 10.0,top: 0.0,right: 0.0,bottom: 0.0),
                      width: MediaQuery.of(context).size.width * 0.10,
                      height: 55,
                      child: Image.asset('images/Allow.png',width: 400,height: 500,)
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 10.0,top: 10.0,right: 0.0,bottom: 0.0),
                    width: MediaQuery.of(context).size.width * 0.28,
                    height: 45,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Stack(
                        children: <Widget>[
                          Positioned.fill(
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade700,
                                  border: Border.all(color: Colors.black,width: 0)
                              ),
                            ),
                          ),
                          TextButton(
                            style: TextButton.styleFrom(
                              padding: const EdgeInsets.only(left: 15.0,top: 0.0,right: 0.0,bottom: 0.0),
                              //primary: Colors.white,
                              textStyle: const TextStyle(fontSize: 20),
                              //alignment: Alignment(MediaQuery.of(context).size.width * 0.5, 0)
                            ),
                            onPressed: () => _selectDateFinal(context),
                            child: Text("${selectedDateFinal.toLocal()}".split(' ')[0],style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 15)),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}


