import 'package:flutter/material.dart';
import 'package:first_app/widgets/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(colors: [
          Color.fromARGB(255, 17, 130, 223),
          Color.fromARGB(255, 5, 53, 107)
        ]),
      ),
    ),
  );
}
