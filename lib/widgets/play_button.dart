import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:umnyashka/modules/lessons/pick_one/screen.dart';

class PlayButton extends StatelessWidget {
  const PlayButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(() => const PickOneLessonScreen()),
      child: Container(
        width: 60,
        height: 60,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(100)),
        ),
        child: const Icon(Icons.play_arrow_rounded, size: 36),
      ),
    );
  }
}
