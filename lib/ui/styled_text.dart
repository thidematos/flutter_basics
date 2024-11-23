import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.outputText,
      {super.key, double someNamedArgument = 5.5});

  final String outputText;

  @override
  Widget build(context) {
    return Text(
      outputText,
      style: const TextStyle(
        color: Color.fromARGB(255, 110, 231, 183),
        fontSize: 24,
      ),
    );
  }
}
