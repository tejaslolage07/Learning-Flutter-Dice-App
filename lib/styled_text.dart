import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  // const StyledText(String text{super.key}): text = text; // This is one method
  // to assign value to the class variable
  const StyledText(this.text, {super.key});

  final String text;

  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(color: Colors.white30, fontSize: 20),
    );
  }
}
