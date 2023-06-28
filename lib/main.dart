import 'package:flutter/material.dart';
import 'package:dice/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer.purple(),
      ),
    ),
  );
  return;
}

// Stateless widgets are used when the internal data does not change
// Stateful widgets are used when the internal data changes and the UI state 
// needs to be changed according to the new internal state.