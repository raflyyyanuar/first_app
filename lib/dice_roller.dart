
import 'dart:math';
import 'package:first_app/styled_text.dart';
import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  int currDiceRoll = randomizer.nextInt(6) + 1;

  void rollDice() {
    setState(() {
      currDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-images/dice-$currDiceRoll.png',
          width: 200,
        ),
        const SizedBox(
          height: 12,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.black,
              textStyle: const TextStyle(
                fontSize: 24,
              )),
          child: const StyledText("Roll the dice!"),
        ),
      ],
    );
  }
}
