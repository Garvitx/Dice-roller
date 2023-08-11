import 'package:flutter/material.dart';
import 'gradient_container.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      backgroundColor: Color.fromARGB(255, 190, 41, 108),
      body: GradientColor(
          Color.fromARGB(255, 204, 43, 94), Color.fromARGB(255, 117, 58, 136)),
    ),
  ));
}
