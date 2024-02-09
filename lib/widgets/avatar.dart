import 'package:flutter/material.dart';

class UAvatar extends StatelessWidget {
  const UAvatar({super.key, required this.radius});

  final double radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: radius * 2,
      height: radius * 2,
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: const BorderRadius.all(Radius.circular(100)),
      ),
    );
  }
}
