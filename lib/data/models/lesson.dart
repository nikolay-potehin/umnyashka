import 'package:flutter/material.dart';
import 'package:umnyashka/data/models/tasks/task.dart';
import 'package:umnyashka/data/models/ucard_data.dart';
import 'package:umnyashka/modules/lessons/pick_one/screen.dart';

abstract class Lesson {
  Widget get screen;
  void reset();
}

class PickOneLesson extends Lesson {
  PickOneLesson({required this.tasks, required this.view});
  final List<PickOneTask> tasks;
  final UCardData view;

  @override
  Widget get screen => PickOneLessonScreen(lesson: this);

  @override
  void reset() {
    for (var task in tasks) {
      task.reset();
    }
  }
}
