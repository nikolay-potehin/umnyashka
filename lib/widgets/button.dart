import 'package:flutter/material.dart';
import 'package:umnyashka/core/constants/decorations.dart';

class UButton extends StatelessWidget {
  const UButton({
    super.key,
    required this.onTap,
    required this.child,
    this.width,
    this.margin,
  });

  final VoidCallback onTap;
  final Widget child;
  final double? width;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width ?? double.infinity,
        margin: margin,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: UDecorations.outline,
        child: Center(child: child),
      ),
    );
  }
}
