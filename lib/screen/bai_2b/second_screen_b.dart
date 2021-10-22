import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondScreenB extends StatefulWidget {
  const SecondScreenB({Key? key}) : super(key: key);

  @override
  _SecondScreenAState createState() => _SecondScreenAState();
}

class _SecondScreenAState extends State<SecondScreenB> {
  @override
  Widget build(BuildContext context) {

    _containerWidget(){
      return Expanded(flex:9,child: Container(color: Colors.pink,));
    }
    _spacerWidget(){
      return Expanded(flex:1,child: Container(color: Colors.white,),);
    }
    List<Widget>columnNumber = [];
    int maxColumn = 6;

    for (int i = 0; i < maxColumn; i++){
      columnNumber.add(_containerWidget());
      if(i < maxColumn - 1){
        columnNumber.add(_spacerWidget());
      }
      // columnNumber=[];
    }

    String _message(){
      return ('Không có cột để hiển thị');
    }

    if(maxColumn > 0){
      return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: columnNumber,
        ),
      );
    }else{
      return Scaffold(
        body: Center(
          child: Container(
            child: Text(_message(),style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          ),
        ),
      );
    }
  }
}
