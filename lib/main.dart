import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: GradientContainer(
        [Color.fromARGB(255, 253, 162, 4), Color.fromARGB(255, 253, 255, 160)],
      ),
    ),
  ));
}
