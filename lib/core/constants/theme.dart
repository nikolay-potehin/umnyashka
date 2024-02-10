import 'package:flutter/material.dart';

abstract class UTheme {
  static Color get background => const Color.fromRGBO(253, 245, 230, 1);
  static Color get secondary => const Color.fromRGBO(230, 230, 230, 1);
  static Color get primary => const Color.fromRGBO(254, 255, 215, 1);

  static Color get success => const Color.fromRGBO(0, 255, 127, 1);

  static Color get red => const Color.fromRGBO(235, 76, 66, 1);
  static Color get pink => const Color.fromRGBO(255, 113, 177, 1);
  static Color get purple => const Color.fromRGBO(148, 87, 235, 1);
  static Color get blue => const Color.fromRGBO(74, 164, 255, 1);
  static Color get yellow => const Color.fromRGBO(244, 202, 22, 1);
}
