import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:umnyashka/data/models/lesson.dart';
import 'package:umnyashka/data/models/tasks/pick_one.dart';
import 'package:umnyashka/data/models/ucard_data.dart';

class LessonsService extends GetxService {
  final lessons = [
    Lesson(
      tasks: [
        PickOneTask(['Легкий', 'Средний', 'Тяжелый', 'Легчайший'], 2),
        PickOneTask(['Легчайший', 'Тяжелый', 'Средний', 'Легкий'], 1),
        PickOneTask(['Легкий', 'Средний', 'Легчайший', 'Тяжелый'], 3),
        PickOneTask(['Тяжелый', 'Легчайший', 'Средний', 'Легкий'], 0),
      ],
      view: UCardData(
        title: 'Легкий - Тяжелый',
        description: 'Выбери правильные предметы',
        color: const Color.fromRGBO(80, 200, 120, 1),
      ),
    ),
    Lesson(
      tasks: [
        PickOneTask(['Маленький', 'Средний', 'Большой', 'Огромный'], 0),
        PickOneTask(['Огромный', 'Большой', 'Средний', 'Маленький'], 3),
        PickOneTask(['Огромный', 'Средний', 'Маленькмй', 'Большой'], 2),
      ],
      view: UCardData(
        title: 'Маленький - Большой',
        description: 'Выбери правильные предметы',
        color: const Color.fromRGBO(235, 76, 66, 1),
      ),
    ),
    Lesson(
      tasks: [
        PickOneTask(['Узкий', 'Самый узкий', 'Широкий', 'Широченный'], 1),
        PickOneTask(['Средний', 'Широкий', 'Просто Узкий', 'Очень узкий'], 3),
      ],
      view: UCardData(
        title: 'Узкий - Широкий',
        description: 'Выбери правильные предметы',
        color: const Color.fromRGBO(148, 87, 235, 1),
      ),
    ),
  ];
}
