import 'dart:math';

import 'package:flutter/material.dart';

class SecondAnimation extends StatefulWidget {
  const SecondAnimation({super.key});

  @override
  State<SecondAnimation> createState() => _SecondAnimationState();
}

class _SecondAnimationState extends State<SecondAnimation> {
  bool bigger = false;
  late double count;
  double transformInternal(double t) {
    return sin(count * 2 * pi * t) * 0.5 * 0.5;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 63, 56, 56),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: const Color.fromARGB(255, 31, 29, 29),
        title: const Text('Second Animation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedContainer(
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  colors: const [
                    Color.fromARGB(255, 39, 176, 119),
                    Colors.transparent,
                  ],
                  stops: [bigger == true ? 0.8 : 0.5, 1.0],
                ),
              ),
              width: bigger == true ? 250 : 100,
              duration: const Duration(seconds: 1),
              curve: Curves.easeInCubic,
              child: bigger == true
                  ? Image.network(
                      'https://www.pngall.com/wp-content/uploads/9/Yellow-Star-PNG-Image.png')
                  : Image.asset('assets/images/star.png'),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    bigger = !bigger;
                  });
                },
                child: const Text('Click'))
          ],
        ),
      ),
    );
  }
}
