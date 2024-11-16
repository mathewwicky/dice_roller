import 'package:flutter/material.dart';
//import 'package:dice/style_text.dart';

const startAligment = Alignment.topLeft;
const endAligment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  GradientContainer(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;

  var activeDiceImage = 'assets/dice-images/dice-2.png';

  // create a function for the onpress roll dice button

  void rollDice() {
    // logic for the button
    activeDiceImage = 'assets/dice-images/dice-4.png';
    print("helo");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAligment,
          end: endAligment,
        ),
      ),
      child: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            activeDiceImage,
            width: 200,
          ),
          const SizedBox(
            height: 10,
          ),
          TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 20),
            ),
            child: const Text("Roll Dice"),
          )
        ],
      )),
    );
  }
}





// class GradientContainer extends StatelessWidget {
//   const GradientContainer({super.key, required this.colors}); // named argument are always optional so we need the required key world

//   final List<Color> colors;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration:  BoxDecoration(
//         gradient: LinearGradient(
//           colors: colors,
//           begin: startAligment,
//           end: endAligment,
//         ),
//       ),
//       child: const Center(
//         child: StyledText("Hello World"),
//       ),
//     );
//   }
// }
