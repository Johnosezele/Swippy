/*
This is the gradient colors on each app screen

Here's an explanation of this implementation:

- We use a combination of RadialGradients and a LinearGradient to achieve the desired effect.
- The first RadialGradient creates the light yellow circular effect at the top left corner.
- The second RadialGradient creates the white circular effect at the bottom middle.
- The innermost LinearGradient fills the remaining space with a white/yellow mix gradient.
- We use nested Containers with BoxDecorations to layer these gradients.

This was tweaked till it looked like this
*/

import 'package:flutter/material.dart';

class SwippyGradient {
  //Dashboard Gradient
  static Widget dashboardGradientFull() {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xffF4D494),
            Colors.white,
          ],
        ),
      ),
      child: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: RadialGradient(
                center: Alignment.topLeft,
                radius: 3,
                colors: [
                  Color.fromARGB(255, 255, 232, 185),
                  Color.fromARGB(0, 245, 206, 156),
                ],
                stops: [0.0, 0.3],
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              gradient: RadialGradient(
                center: Alignment(0.0, 0.7), // Slightly below center
                radius: 3.7,
                colors: [
                  Colors.white,
                  Color(0x00F9F7EB),
                ],
                stops: [0.0, 0.6],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
