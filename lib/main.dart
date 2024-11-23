import 'package:flutter/material.dart';
import 'package:flutter_basics/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
            [Color.fromARGB(255, 0, 34, 89), Color.fromARGB(255, 15, 23, 42)]),
      ),
    ),
  );
}
