import 'package:flutter/material.dart';

class TextContainer extends StatelessWidget {
  const TextContainer(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontStyle: FontStyle.italic,
        fontSize: 25,
        color: Colors.white70,
      ),
    );
  }
}
