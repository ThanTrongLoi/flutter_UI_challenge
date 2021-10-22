import 'package:baitap_200lab/components/button_components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AllComponentsPage extends StatelessWidget {
  const AllComponentsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Components'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        color: Colors.black54,
        child: ListView(
          children: [
            CustomButton(
              inputText: 'Blue Button',
              onPress: (){},
              colors: Colors.blue,
            ),
            CustomButton(
              inputText: 'Red Button',
              onPress: (){},
              colors: Colors.red,
            ),
            CustomButton(
              inputText: 'Orange Button',
              onPress: (){},
              colors: Colors.orange,
            ),
            CustomButton(
              inputText: 'Green Button',
              onPress: (){},
              colors: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
