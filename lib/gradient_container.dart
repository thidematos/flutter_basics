import 'package:flutter/material.dart';
import 'package:flutter_basics/ui/dice_roller.dart';
import 'package:flutter_basics/ui/styled_text.dart';

const startAlignment = Alignment.topLeft;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colors, {super.key});

  GradientContainer.blue({super.key}) : colors = [Colors.blue, Colors.cyan];

  final List<Color> colors;

  @override
  build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
