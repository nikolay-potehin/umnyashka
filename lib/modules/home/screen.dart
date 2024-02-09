import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:umnyashka/modules/home/controller.dart';
import 'package:umnyashka/widgets/avatar.dart';
import 'package:umnyashka/widgets/card.dart';
import 'package:umnyashka/widgets/scaffold.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final c = Get.put(HomeController());

    return UScaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                Spacer(),
                UAvatar(radius: 30),
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: c.lessons.length,
              padding: const EdgeInsets.all(20),
              itemBuilder: (_, idx) => UCard(data: c.lessons[idx]),
              separatorBuilder: (_, __) => const SizedBox(height: 20),
            ),
          ),
        ],
      ),
    );
  }
}
