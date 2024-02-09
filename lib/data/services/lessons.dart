import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:umnyashka/core/constants/enums/voices.dart';
import 'package:umnyashka/data/models/lesson.dart';
import 'package:umnyashka/data/models/tasks/pick_one.dart';
import 'package:umnyashka/data/models/ucard_data.dart';

class LessonsService extends GetxService {
  final lessons = [
    Lesson(
      tasks: [
        PickOneTask(['Легкий', 'Средний', 'Тяжелый', 'Легчайший'], 2, voice: Voices.pick_heaviest),
        PickOneTask(['Легчайший', 'Тяжелый', 'Средний', 'Легкий'], 0, voice: Voices.pick_lightest),
        PickOneTask(['Легкий', 'Средний', 'Легчайший', 'Тяжелый'], 3, voice: Voices.pick_heaviest),
        PickOneTask(['Тяжелый', 'Легчайший', 'Средний', 'Легкий'], 1, voice: Voices.pick_lightest),
      ],
      view: UCardData(
        title: 'Легкий - Тяжелый',
        description: 'Выбери правильные предметы',
        color: const Color.fromRGBO(80, 200, 120, 1),
      ),
    ),
    Lesson(
      tasks: [
        PickOneTask(['Маленький', 'Средний', 'Большой', 'Огромный'], 0,
            voice: Voices.pick_smallest),
        PickOneTask(['Огромный', 'Большой', 'Средний', 'Маленький'], 0, voice: Voices.pick_biggest),
        PickOneTask(['Огромный', 'Средний', 'Маленькмй', 'Большой'], 2,
            voice: Voices.pick_smallest),
      ],
      view: UCardData(
        title: 'Маленький - Большой',
        description: 'Выбери правильные предметы',
        color: const Color.fromRGBO(235, 76, 66, 1),
      ),
    ),
    Lesson(
      tasks: [
        PickOneTask(['Узкий', 'Самый узкий', 'Широкий', 'Широченный'], 1,
            voice: Voices.pick_narrowest),
        PickOneTask(['Средний', 'Широкий', 'Просто Узкий', 'Очень узкий'], 1,
            voice: Voices.pick_widest),
      ],
      view: UCardData(
        title: 'Узкий - Широкий',
        description: 'Выбери правильные предметы',
        color: const Color.fromRGBO(148, 87, 235, 1),
      ),
    ),
  ];
}
