import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:umnyashka/data/models/tasks/pick_one.dart';
import 'package:umnyashka/data/services/sounds.dart';
import 'package:umnyashka/modules/lessons/pick_one/views/success.dart';
import 'package:umnyashka/modules/lessons/pick_one/views/tasks.dart';

class PickOneController extends GetxController {
  PickOneController({required this.title, required this.tasks});
  final List<PickOneTask> tasks;
  final String title;
  final player = Get.find<SoundsService>();

  int _curr = 0;

  int get currentIndex => _curr;
  List<TaskItem> get currentItems => tasks[_curr].items;
  TaskItem? get picked => tasks[_curr].picked;

  Widget get view {
    if (_curr >= tasks.length) {
      return LessonSuccessView(tasksCount: tasks.length, title: title);
    }
    return const LessonTasksView();
  }

  void pick(TaskItem item) {
    tasks[_curr].pick(item);
    update();
  }

  void check() {
    if (tasks[_curr].check()) {
      _next();
    }
  }

  void _next() async {
    _curr += 1;
    if (_curr >= tasks.length) {
      await player.playLessonCompleted();
      for (var task in tasks) {
        task.reset();
      }
    } else {
      await player.playStepProgress();
    }
    update();
  }
}
