import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_basics/ui/styled_text.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  final List<String> labels = [
    'Logo!',
    'Foguete não tem ré!',
    'Toninho!',
    'Hino!',
    'Bandeira!'
  ];

  int activeImage = 1;

  final Random randGenerator = Random();

  void rollDice() {
    setState(() {
      activeImage = randGenerator.nextInt(5) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/image-$activeImage.png',
          width: activeImage == 5 ? 325 : 250,
        ),
        const SizedBox(
          height: 50,
        ),
        StyledText(labels[activeImage - 1]),
        const SizedBox(
          height: 50,
        ),
        ElevatedButton(
          onPressed: rollDice,
          style: ElevatedButton.styleFrom(
            padding:
                const EdgeInsets.only(top: 8, bottom: 8, left: 30, right: 30),
            backgroundColor: const Color.fromARGB(145, 9, 46, 62),
          ),
          child: const StyledText('PAU NA MÁQUINA 🚀'),
        ),
      ],
    );
  }
}
