import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:umnyashka/data/services/lessons.dart';
import 'package:umnyashka/data/services/sounds.dart';
import 'package:umnyashka/modules/home/screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LessonsService());
    Get.put(SoundsService());

    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return const GetMaterialApp(
      home: HomeScreen(),
    );
  }
}
