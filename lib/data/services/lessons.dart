import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:umnyashka/core/constants/enums/voices.dart';
import 'package:umnyashka/data/models/lesson.dart';
import 'package:umnyashka/data/models/tasks/task.dart';
import 'package:umnyashka/data/models/ucard_data.dart';

class LessonsService extends GetxService {
  final lessons = _testLessons;
}

final _testLessons = [
  Lesson(
    tasks: [
      PickOneTask([
        TaskItem(name: 'Легкий', image: const SizedBox()),
        TaskItem(name: 'Средний', image: const SizedBox()),
        TaskItem(name: 'Тяжелый', image: const SizedBox()),
        TaskItem(name: 'Легчайший', image: const SizedBox()),
      ], 2, voice: Voices.pick_heaviest),
      PickOneTask([
        TaskItem(name: 'Легчайший', image: const SizedBox()),
        TaskItem(name: 'Тяжелый', image: const SizedBox()),
        TaskItem(name: 'Средний', image: const SizedBox()),
        TaskItem(name: 'Легкий', image: const SizedBox()),
      ], 0, voice: Voices.pick_lightest),
      PickOneTask([
        TaskItem(name: 'Легкий', image: const SizedBox()),
        TaskItem(name: 'Средний', image: const SizedBox()),
        TaskItem(name: 'Легчайший', image: const SizedBox()),
        TaskItem(name: 'Тяжелый', image: const SizedBox()),
      ], 3, voice: Voices.pick_heaviest),
      PickOneTask([
        TaskItem(name: 'Тяжелый', image: const SizedBox()),
        TaskItem(name: 'Легчайший', image: const SizedBox()),
        TaskItem(name: 'Средний', image: const SizedBox()),
        TaskItem(name: 'Легкий', image: const SizedBox()),
      ], 1, voice: Voices.pick_lightest),
    ],
    view: UCardData(
      title: 'Легкий - Тяжелый',
      description: 'Выбери правильные предметы',
      color: const Color.fromRGBO(80, 200, 120, 1),
    ),
  ),
  Lesson(
    tasks: [
      PickOneTask([
        TaskItem(name: 'Маленький', image: const SizedBox()),
        TaskItem(name: 'Средний', image: const SizedBox()),
        TaskItem(name: 'Большой', image: const SizedBox()),
        TaskItem(name: 'Огромный', image: const SizedBox()),
      ], 0, voice: Voices.pick_smallest),
      PickOneTask([
        TaskItem(name: 'Огромный', image: const SizedBox()),
        TaskItem(name: 'Большой', image: const SizedBox()),
        TaskItem(name: 'Средний', image: const SizedBox()),
        TaskItem(name: 'Маленький', image: const SizedBox()),
      ], 0, voice: Voices.pick_biggest),
      PickOneTask([
        TaskItem(name: 'Огромный', image: const SizedBox()),
        TaskItem(name: 'Средний', image: const SizedBox()),
        TaskItem(name: 'Маленький', image: const SizedBox()),
        TaskItem(name: 'Большой', image: const SizedBox()),
      ], 2, voice: Voices.pick_smallest),
    ],
    view: UCardData(
      title: 'Маленький - Большой',
      description: 'Выбери правильные предметы',
      color: const Color.fromRGBO(235, 76, 66, 1),
    ),
  ),
  Lesson(
    tasks: [
      PickOneTask([
        TaskItem(name: 'Узкий', image: const SizedBox()),
        TaskItem(name: 'Самый узкий', image: const SizedBox()),
        TaskItem(name: 'Широкий', image: const SizedBox()),
        TaskItem(name: 'Широченный', image: const SizedBox()),
      ], 1, voice: Voices.pick_narrowest),
      PickOneTask([
        TaskItem(name: 'Средний', image: const SizedBox()),
        TaskItem(name: 'Широкий', image: const SizedBox()),
        TaskItem(name: 'Узкий', image: const SizedBox()),
        TaskItem(name: 'Очень узкий', image: const SizedBox()),
      ], 1, voice: Voices.pick_widest),
    ],
    view: UCardData(
      title: 'Узкий - Широкий',
      description: 'Выбери правильные предметы',
      color: const Color.fromRGBO(148, 87, 235, 1),
    ),
  ),
];
