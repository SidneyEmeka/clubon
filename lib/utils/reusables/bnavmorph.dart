import 'dart:ui';

import 'package:flutter/material.dart';

class Bnavmorph extends StatelessWidget {
  final double blur;
  final double opacity;
  final Widget child;
  const Bnavmorph({super.key, required this.blur, required this.opacity, required this.child});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 5),
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(opacity),
              border: Border.all(width: 1.5,color: Colors.white.withOpacity(0.2))
          ),
          child: child,
        ),),
    );
  }
}
