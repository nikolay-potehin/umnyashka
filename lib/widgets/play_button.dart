import 'package:flutter/material.dart';
import 'package:umnyashka/core/constants/decorations.dart';

class PlayButton extends StatelessWidget {
  const PlayButton({super.key, required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: () => Get.to(() => const PickOneLessonScreen()),
      onTap: onTap,
      child: Container(
        width: 60,
        height: 60,
        decoration: UDecorations.outline.copyWith(color: Colors.white),
        child: const Icon(Icons.play_arrow_rounded, size: 36),
      ),
    );
  }
}
