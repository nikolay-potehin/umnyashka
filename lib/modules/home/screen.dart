import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:umnyashka/data/services/lessons.dart';
import 'package:umnyashka/widgets/avatar.dart';
import 'package:umnyashka/widgets/lesson_card.dart';
import 'package:umnyashka/widgets/scaffold.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final c = Get.put(HomeController());
    final lessons = Get.find<LessonsService>().lessons;

    return UScaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                Spacer(),
                UAvatar(radius: 30, child: Icon(Icons.person, size: 30)),
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: lessons.length,
              padding: const EdgeInsets.all(20),
              itemBuilder: (_, idx) => LessonCard(lesson: lessons[idx]),
              separatorBuilder: (_, __) => const SizedBox(height: 20),
            ),
          ),
        ],
      ),
    );
  }
}
