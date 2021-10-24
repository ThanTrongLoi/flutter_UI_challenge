import 'package:baitap_200lab/components/button_components.dart';
import 'package:baitap_200lab/screen/bai_1/first_screen.dart';
import 'package:baitap_200lab/screen/bai_2a/second_screen_a.dart';
import 'package:baitap_200lab/screen/bai_2c/second_screen_c.dart';
import 'package:baitap_200lab/screen/bai_2d/second_screen_d.dart';
import 'package:baitap_200lab/screen/bai_3/third_screen.dart';
// import 'package:baitap_200lab/screen/message/message_page.dart';
import 'package:flutter/material.dart';

import 'bai_2b/second_screen_b.dart';
import 'message/main_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                onPress: (){Navigator.push(context,MaterialPageRoute(builder: (_)=>FirstScreen()));},
                inputText: 'bài 1',
                colors: Colors.blue,
              ),
              CustomButton(
                onPress: (){Navigator.push(context,MaterialPageRoute(builder: (_)=>SecondScreenA()));},
                inputText: 'bài 2a',
                colors: Colors.blue,
              ),
              CustomButton(
                onPress: (){Navigator.push(context,MaterialPageRoute(builder: (_)=>SecondScreenB()));},
                inputText: 'bài 2b',
                colors: Colors.blue,
              ),
              CustomButton(
                onPress: (){Navigator.push(context,MaterialPageRoute(builder: (_)=>SecondScreenC()));},
                inputText: 'bài 2c',
                colors: Colors.blue,
              ),
              CustomButton(
                onPress: (){Navigator.push(context,MaterialPageRoute(builder: (_)=>SecondScreenD()));},
                inputText: 'bài 2d',
                colors: Colors.blue,
              ),
              CustomButton(
                onPress: (){Navigator.push(context,MaterialPageRoute(builder: (_)=>ThirdScreen()));},
                inputText: 'bài 3',
                colors: Colors.blue,
              ),
              CustomButton(
                onPress: (){Navigator.push(context,MaterialPageRoute(builder: (_)=>MainScreen()));},
                inputText: 'message',
                colors: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
