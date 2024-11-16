import 'package:flutter/material.dart';
import 'package:dice/gradient_container.dart';
//import 'package:dice/style_text.dart';

void main() {
  runApp(
     MaterialApp(
      home: Scaffold(
        body: GradientContainer(
         const Color.fromARGB(255, 41, 2, 108),
         const Color.fromARGB(255, 141, 79, 247),
        ),
      ),
    ),
  );
}
