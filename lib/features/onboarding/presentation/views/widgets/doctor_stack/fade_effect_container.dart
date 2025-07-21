import 'package:flutter/material.dart';

class FadeEffectContainer extends StatelessWidget {
  const FadeEffectContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.transparent,
            Colors.white.withValues(alpha: 0),
            Colors.white,
            Colors.white,
          ],
        ),
      ),
    );
  }
}

