import 'package:flutter/material.dart';
import 'package:dice/style_text.dart';

const startAligment =  Alignment.topLeft;
const endAligment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget{
  const GradientContainer({super.key});
  @override
  Widget build(BuildContext context) {
    
    return  Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 23, 2, 59),
                Color.fromARGB(255, 86, 13, 213),
              ],
              begin: startAligment,
              end: endAligment,
            ),
          ),
          child: const Center(
            child: StyledText(),
          ),
        );
  }
}