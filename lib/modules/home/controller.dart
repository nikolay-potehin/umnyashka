import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:umnyashka/data/models/ucard.dart';

class HomeController extends GetxController {
  final lessons = [
    UCardData(
      title: 'Самый тяжелый',
      description: 'Выбери самые тяжелые предметы',
      color: const Color.fromRGBO(80, 200, 120, 1),
    ),
    UCardData(
      title: 'Самый маленький',
      description: 'Выбери самый маленький предмет',
      color: const Color.fromRGBO(235, 76, 66, 1),
    ),
    UCardData(
      title: 'Самый широкий',
      description: 'Выбери самые широкие предметы',
      color: const Color.fromRGBO(148, 87, 235, 1),
    ),
  ];
}
