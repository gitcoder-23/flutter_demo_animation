import 'package:flutter/material.dart';
import 'dart:math' as math;

class ThirdTweenAnimation extends StatelessWidget {
  const ThirdTweenAnimation({super.key});
  final String starBackground =
      "https://img.freepik.com/premium-vector/abstract-space-background-star-stardust-deep-universe_275216-72.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 63, 56, 56),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: const Color.fromARGB(255, 31, 29, 29),
        title: const Text('ThirdTweenAnimation'),
      ),
      body: Stack(
        children: <Widget>[
          Image.network(
            starBackground,
            fit: BoxFit.cover,
            height: double.infinity,
          ),
          Center(
            child: TweenAnimationBuilder(
                tween: Tween<double>(begin: 0, end: 2 * math.pi),
                duration: const Duration(seconds: 2),
                builder: (_, double angle, __) {
                  return Transform.rotate(
                    angle: angle,
                    child: Image.asset(
                      'assets/images/star_img.png',
                      width: 250,
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
