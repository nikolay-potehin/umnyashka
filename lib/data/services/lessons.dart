import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:umnyashka/core/constants/enums/voices.dart';
import 'package:umnyashka/data/models/lesson.dart';
import 'package:umnyashka/data/models/tasks/task.dart';
import 'package:umnyashka/data/models/ucard_data.dart';

class LessonsService extends GetxService {
  List<PickOneLesson> get lessons => _testLessons;
}

final _testLessons = [
  PickOneLesson(
    tasks: [
      PickOneTask([TaskItem.motorbike(), TaskItem.key(), TaskItem.leaf(), TaskItem.bag()], 0,
          voice: Voices.pick_heaviest),
      PickOneTask([TaskItem.bag(), TaskItem.leaf(), TaskItem.key(), TaskItem.motorbike()], 1,
          voice: Voices.pick_lightest),
      PickOneTask([TaskItem.key(), TaskItem.bag(), TaskItem.sofa(), TaskItem.leaf()], 2,
          voice: Voices.pick_heaviest),
      PickOneTask([TaskItem.leaf(), TaskItem.sofa(), TaskItem.bag(), TaskItem.key()], 0,
          voice: Voices.pick_lightest),
    ],
    view: UCardData(
      title: 'Легкий - Тяжелый',
      description: 'Выбери правильные предметы',
      color: const Color.fromRGBO(80, 200, 120, 1),
    ),
  ),
  PickOneLesson(
    tasks: [
      PickOneTask([TaskItem.bag(), TaskItem.leaf(), TaskItem.key(), TaskItem.motorbike()], 3,
          voice: Voices.pick_biggest),
      PickOneTask([TaskItem.key(), TaskItem.motorbike(), TaskItem.sofa(), TaskItem.leaf()], 0,
          voice: Voices.pick_smallest),
      PickOneTask([TaskItem.leaf(), TaskItem.bag(), TaskItem.sofa(), TaskItem.key()], 2,
          voice: Voices.pick_biggest),
    ],
    view: UCardData(
      title: 'Маленький - Большой',
      description: 'Выбери правильные предметы',
      color: const Color.fromRGBO(235, 76, 66, 1),
    ),
  ),
  PickOneLesson(
    tasks: [
      PickOneTask([TaskItem.bag(), TaskItem.leaf(), TaskItem.key(), TaskItem.sofa()], 2,
          voice: Voices.pick_narrowest),
      PickOneTask([TaskItem.sofa(), TaskItem.bag(), TaskItem.leaf(), TaskItem.key()], 0,
          voice: Voices.pick_widest),
    ],
    view: UCardData(
      title: 'Узкий - Широкий',
      description: 'Выбери правильные предметы',
      color: const Color.fromRGBO(148, 87, 235, 1),
    ),
  ),
];
