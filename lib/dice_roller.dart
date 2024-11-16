import 'dart:math';
import 'package:flutter/material.dart';

final randomizer = Random();

class Roller extends StatefulWidget {
  const Roller({super.key});

  @override
  State<Roller> createState() {
    return _RollerState();
  }
}

class _RollerState extends State<Roller> {
  var activeDiceImage = 'assets/dice-images/dice-2.png';

  // create a function for the onpress roll dice button

  void rollDice() {
    var diceRoll = randomizer.nextInt(6) + 1;
    setState(() {
      // logic for the button
      activeDiceImage = 'assets/dice-images/dice-$diceRoll.png';
      //print("helo");
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
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
    );
  }
}
