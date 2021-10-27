import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondScreenC extends StatefulWidget {
  const SecondScreenC({Key? key}) : super(key: key);

  @override
  _SecondScreenAState createState() => _SecondScreenAState();
}

class _SecondScreenAState extends State<SecondScreenC> {

  Widget _containerWidget() {
    return Expanded(
        flex: 9,
        child: Container(
          color: Colors.pink,
        ));
  }

  Widget _spacerWidget() {
    return Expanded(
      flex: 1,
      child: Container(
        color: Colors.white,
      ),
    );
  }
  List<Widget> columns(maxColumn){
    List<Widget>columnNumber = [];
    for (int i = 0; i < maxColumn; i++){
      columnNumber.add(_containerWidget());
      if(i < maxColumn - 1){
        columnNumber.add(_spacerWidget());
      }
    }
    return columnNumber;
  }

  Widget wgColumns(nbcolumn){
    return Expanded(
      flex: 9,
      child: Column(
        children: columns(nbcolumn),
      ),
    );
  }

  List<Widget> boxs(nbrow, nbcolumn){
    List<Widget> box = [];
    for (int i = 0; i < nbrow; i++){
      box.add(wgColumns(nbcolumn));
      if (i < nbrow -1){
        box.add(_spacerWidget());
      }
    }
    return box;
  }

  // return Scaffold(
  //   body: Row(
  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //     children: columnNumber,
  //   ),
  // );

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Row(
        children: boxs(6, 6),
      ),
    );


  }
}
