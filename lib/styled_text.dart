import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  StyledText(this.text, {super.key});

  String text;

  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.white,
        fontFamily: 'Poppins', // Set the font family to Poppins
        fontSize: 28, // Set the font size to 28
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
