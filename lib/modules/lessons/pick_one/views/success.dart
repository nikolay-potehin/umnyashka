import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:umnyashka/core/constants/theme.dart';
import 'package:umnyashka/widgets/button.dart';

class LessonSuccessView extends StatelessWidget {
  const LessonSuccessView({super.key, required this.tasksCount, required this.title});

  final int tasksCount;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title, style: const TextStyle(fontSize: 28)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: StepProgressIndicator(
            totalSteps: tasksCount,
            currentStep: tasksCount,
            size: 12,
            selectedColor: UTheme.success,
            roundedEdges: const Radius.circular(100),
          ),
        ),
        Expanded(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.verified, size: 120, color: UTheme.success),
                const SizedBox(height: 20),
                const Text('Молодец!', style: TextStyle(fontSize: 28)),
              ],
            ),
          ),
        ),
        UButton(
          margin: const EdgeInsets.all(20),
          onTap: () => Get.back(),
          child: const Text('Домой', style: TextStyle(fontSize: 20)),
        ),
      ],
    );
  }
}
