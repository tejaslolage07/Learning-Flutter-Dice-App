import 'package:flutter/material.dart';
import 'package:dice/dice_roller.dart';
// import 'package:dice/styled_text.dart';

var startAlignment = Alignment.topLeft;
// Alignment? endAlignment; // This means endAlignment can either be of Alignment
// type or null.
// Alignment endAlignment = Alignment.bottomRight;

// final endAlignment = Alignment.bottomRight; // Final is used like const, except
// except that final here means no one can reassign the value of this variable
// in the code later, but if a function is determining the value of this variable,
// such as final endAlignment = getAlignment(), the final keyword can be used.
// const, on the other hand is used when a hardcoded value is declared that need
// not be changed in the code/elsewhere afterwards.
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  // const GradientContainer({key}) : super(key: key);  // Here, super keyword
  // means we are referring to the parent class of the current class.
  const GradientContainer(
      {super.key,
      required this.colors}); // Another way of writing the same thing

  GradientContainer.purple({super.key}) : colors = [Colors.purple, Colors.pink];

  final List<Color> colors;
  @override // This is not required, but we want to explicitly mention that we
  // are overriding the original build method in the StatelessWidget interface.
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: colors, begin: startAlignment, end: endAlignment),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}
