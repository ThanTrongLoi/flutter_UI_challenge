import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondScreenD extends StatelessWidget {
  const SecondScreenD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(flex:4,child: Container(color: Colors.pink,margin: const EdgeInsets.only(bottom: 5),)),
          Expanded(
            child: Row(
              children: [
                Expanded(child: Container(color: Colors.pink,margin: const EdgeInsets.only(right:2.5),)),
                Expanded(child: Container(color: Colors.pink,margin: const EdgeInsets.only(left: 2.5),))
              ],
            ),
          )
        ],
      ),
    );
  }
}
