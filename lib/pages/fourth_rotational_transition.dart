import 'package:flutter/material.dart';

class FourthRotationalTransition extends StatefulWidget {
  const FourthRotationalTransition({super.key});

  @override
  State<FourthRotationalTransition> createState() =>
      _FourthRotationalTransitionState();
}

class _FourthRotationalTransitionState extends State<FourthRotationalTransition>
    with SingleTickerProviderStateMixin {
  final String starBackground =
      "https://img.freepik.com/premium-vector/abstract-space-background-star-stardust-deep-universe_275216-72.jpg";
  AnimationController? _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(seconds: 15),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    super.dispose();
    _animationController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 63, 56, 56),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: const Color.fromARGB(255, 31, 29, 29),
        title: const Text('Fourth Rotational Transition'),
      ),
      body: GestureDetector(
        onTap: () {
          if (_animationController!.isAnimating) {
            _animationController!.stop();
          } else {
            _animationController!.repeat();
          }
        },
        child: Stack(
          children: <Widget>[
            Image.network(
              starBackground,
              fit: BoxFit.cover,
              height: double.infinity,
            ),
            Center(
              child: RotationTransition(
                alignment: Alignment.center,
                turns: _animationController!,
                child: Image.asset(
                  'assets/images/star_img.png',
                  width: 250,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
