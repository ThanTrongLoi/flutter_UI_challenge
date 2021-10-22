import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String inputText;
  final VoidCallback onPress;
  final Color colors;
  const CustomButton({Key? key, required this.inputText, required this.onPress, required this.colors}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        width: MediaQuery.of(context).size.width / 1.4,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
            color: colors
        ),
        child: MaterialButton(
          onPressed: (){onPress();},
          child: Text(
            inputText,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
    );
  }
}
