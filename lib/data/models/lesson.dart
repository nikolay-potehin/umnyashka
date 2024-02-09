import 'package:flutter/material.dart';
import 'package:umnyashka/data/models/tasks/pick_one.dart';
import 'package:umnyashka/data/models/tasks/task.dart';
import 'package:umnyashka/data/models/ucard_data.dart';
import 'package:umnyashka/modules/lessons/pick_one/screen.dart';
import 'package:umnyashka/modules/lessons/pick_one/views/success.dart';
import 'package:umnyashka/widgets/scaffold.dart';

class Lesson<T extends Task> {
  Lesson({required this.tasks, required this.view});
  final List<T> tasks;
  final UCardData view;

  Widget get screen {
    if (T == PickOneTask) return PickOneLessonScreen(lesson: this as Lesson<PickOneTask>);
    return UScaffold(body: LessonSuccessView(tasksCount: 1, title: view.title));
  }

  void reset() {
    for (var task in tasks) {
      task.reset();
    }
  }
}
