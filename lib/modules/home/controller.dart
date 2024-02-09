import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:umnyashka/data/models/ucard.dart';

class HomeController extends GetxController {
  final lessons = [
    UCardData(
      title: 'Легкий - Тяжелый',
      description: 'Выбери правильные предметы',
      color: const Color.fromRGBO(80, 200, 120, 1),
    ),
    UCardData(
      title: 'Маленький - Большой',
      description: 'Выбери правильные предметы',
      color: const Color.fromRGBO(235, 76, 66, 1),
    ),
    UCardData(
      title: 'Узкий - Широкий',
      description: 'Выбери правильные предметы',
      color: const Color.fromRGBO(148, 87, 235, 1),
    ),
  ];
}
