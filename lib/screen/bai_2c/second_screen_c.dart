import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondScreenC extends StatefulWidget {
  const SecondScreenC({Key? key}) : super(key: key);

  @override
  _SecondScreenAState createState() => _SecondScreenAState();
}

class _SecondScreenAState extends State<SecondScreenC> {
  @override
  Widget build(BuildContext context) {
    _containerWidget() {
      return Expanded(
          flex: 9,
          child: Container(
            color: Colors.pink,
          ));
    }

    _spacerWidget() {
      return Expanded(
        flex: 1,
        child: Container(
          color: Colors.white,
        ),
      );
    }
    List<Widget>columnNumber = [];
    int maxColumn = 5;
    for (int i = 0; i < maxColumn; i++){
      columnNumber.add(_containerWidget());
      if(i < maxColumn - 1){
        columnNumber.add(_spacerWidget());
      }
      // columnNumber=[];
    }

    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: columnNumber,
      ),
    );
  }
}
