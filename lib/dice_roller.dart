import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({Key? key}) : super(key: key);

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDice = 'assets/images/dice-1.png';
  var pickupLine = '';

  List<String> pickupLines = [
    "Are you a magician? Whenever I look at you, everyone else disappears.",
    "Do you have a map? I just got lost in your eyes.",
    "Do you have a name, or can I call you mine?",
    "Do you believe in love at first sight, or should I walk by again?",
    "Are you a Wi-Fi signal? Because I'm feeling a connection.",
    "Is your name Google? Because you have everything I've been searching for."
  ];

  void rollDice() {
    setState(() {
      // Generate a random number between 1 and 6 (simulate dice roll)
      int randomNumber = Random().nextInt(6) + 1;
      activeDice = 'assets/images/dice-$randomNumber.png';

      // Randomly select a pickup line from the list
      pickupLine = pickupLines[Random().nextInt(pickupLines.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDice,
          width: 200,
        ),
        Text(
          pickupLine,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontFamily: 'Poppins',
            fontSize: 18,
            fontStyle: FontStyle.italic,
            color: Colors.blue,
          ),
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(top: 20),
            foregroundColor: Colors.white, // Adjust the button color as needed
          ),
          child: const Text(
            'Roll the Dice',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 28,
            ),
          ),
        ),
      ],
    );
  }
}
