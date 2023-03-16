import 'package:flutter/material.dart';
import 'dart:math' as math;

// Implicit animations
class FirstAnimation extends StatelessWidget {
  const FirstAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    const double size = 250.0;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 63, 56, 56),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: const Color.fromARGB(255, 31, 29, 29),
        title: const Text('First Animation'),
      ),
      body: Center(
        child: AnimatedContainer(
          margin: const EdgeInsets.symmetric(horizontal: 14),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 59, 255, 219),
                Colors.orange,
              ],
            ),
          ),
          transform: Matrix4.identity()
            ..translate(size / 2, size / 2)
            ..multiply(Matrix4.rotationZ(math.pi / 4))
            ..translate(-size / 2, -size / 2),
          // color: Colors.red,
          // height: size / 2,
          height: size,
          width: size,
          duration: const Duration(seconds: 1),
        ),
      ),
    );
  }
}
