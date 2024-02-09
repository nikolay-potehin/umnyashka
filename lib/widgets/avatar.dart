import 'package:flutter/material.dart';
import 'package:umnyashka/core/constants/decorations.dart';

class UAvatar extends StatelessWidget {
  const UAvatar({super.key, required this.radius, required this.child});

  final double radius;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: radius * 2,
      height: radius * 2,
      decoration: UDecorations.outline.copyWith(color: Colors.white),
      child: child,
    );
  }
}
