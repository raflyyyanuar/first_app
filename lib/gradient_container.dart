
import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

Alignment startAlignment = Alignment.topCenter;
Alignment endAlignment = Alignment.bottomCenter;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colors, {super.key});

  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: startAlignment,
          end: endAlignment,
          colors: colors,
        ),
      ),
      child: const Center(
        child: DiceRoller()
      ),
    );
  }
}
