import 'package:flutter/material.dart';

class GradientColor extends StatelessWidget {
  const GradientColor({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: AlignmentGeometry.topCenter,
          end: AlignmentGeometry.bottomCenter,
          colors: [
            Colors.transparent,
            Color(0xff858585).withValues(alpha: 0.3),
            Color(0xff0E172700).withValues(alpha: 0),
          ],
          stops: [0.4, 0.7, 1.0],
        ),
      ),
    );
  }
}
