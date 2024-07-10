import 'package:flutter/material.dart';
import 'package:first_app/widgets/dice_roller.dart';
// import 'package:first_app/widgets/text_container.dart';

const startAllignment = Alignment.topLeft;
const endAllignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});

  final List<Color> colors;
  // final Color color1;
  // final Color color2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAllignment,
          end: endAllignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }

// TextContainer("Hello World!")

// [
//             Color.fromARGB(255, 17, 130, 223),
//             Color.fromARGB(255, 5, 53, 107),
//           ]

  // @override
  // Widget build(BuildContext context) {
  //   return Container(
  //     decoration: BoxDecoration(
  //       gradient: LinearGradient(
  //         colors: colors,
  //         begin: startAllignment,
  //         end: endAllignment,
  //       ),
  //     ),
  //     child: const Center(
  //       child: TextContainer("Hello World!"),
  //     ),
  //   );
  // }
}
