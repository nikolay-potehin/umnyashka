import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:umnyashka/data/models/lesson.dart';
import 'package:umnyashka/modules/lessons/pick_one/controller.dart';
import 'package:umnyashka/widgets/scaffold.dart';

class PickOneLessonScreen extends StatelessWidget {
  const PickOneLessonScreen({super.key, required this.lesson});

  final PickOneLesson lesson;

  @override
  Widget build(BuildContext context) {
    Get.put(PickOneController(title: lesson.view.title, tasks: lesson.tasks));

    return UScaffold(
      body: GetBuilder<PickOneController>(builder: (c) => c.view),
    );
  }
}
