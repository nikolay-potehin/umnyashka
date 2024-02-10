import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:umnyashka/data/models/lesson.dart';
import 'package:umnyashka/widgets/play_button.dart';

class LessonCard extends StatelessWidget {
  const LessonCard({
    super.key,
    required this.lesson,
  });

  final PickOneLesson lesson;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: lesson.view.color,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        boxShadow: const [
          BoxShadow(blurRadius: 8, color: Colors.grey, offset: Offset(4, 4)),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(lesson.view.title, style: const TextStyle(fontSize: 24)),
                Text(lesson.view.description, style: const TextStyle(fontSize: 16)),
              ],
            ),
          ),
          PlayButton(
            onTap: () => Get.to(() => lesson.screen),
          ),
        ],
      ),
    );
  }
}
