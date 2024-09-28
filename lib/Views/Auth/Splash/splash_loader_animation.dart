import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class SplashAnimator extends StatelessWidget {
  const SplashAnimator({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LoadingAnimationWidget.halfTriangleDot(
        color: Colors.black,
        size: 50,
      ),
    );
  }
}
