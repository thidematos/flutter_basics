import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.cyan, Colors.blue],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: const Center(
            child: Text(
              'ASIMOV JR.',
              style: TextStyle(
                color: Color.fromARGB(255, 233, 231, 231),
                fontSize: 42,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
