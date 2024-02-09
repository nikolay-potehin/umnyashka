import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:umnyashka/core/constants/theme.dart';
import 'package:umnyashka/data/models/tasks/task.dart';
import 'package:umnyashka/modules/lessons/pick_one/controller.dart';
import 'package:umnyashka/widgets/button.dart';

class LessonTasksView extends StatelessWidget {
  const LessonTasksView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PickOneController>(builder: (c) {
      return Column(
        children: [
          Text(c.title, style: const TextStyle(fontSize: 28)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: StepProgressIndicator(
              totalSteps: c.tasks.length,
              currentStep: c.currentIndex,
              size: 12,
              selectedColor: UTheme.success,
              roundedEdges: const Radius.circular(100),
            ),
          ),
          Expanded(
            child: GridView.count(
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              shrinkWrap: true,
              padding: const EdgeInsets.all(20),
              crossAxisCount: 2,
              children: c.currentItems
                  .map((item) => _ItemCard(
                        item: item,
                        onTap: () => c.pick(item),
                      ))
                  .toList(),
            ),
          ),
          UButton(
            margin: const EdgeInsets.all(20),
            onTap: c.check,
            child: const Text('Проверить', style: TextStyle(fontSize: 20)),
          ),
        ],
      );
    });
  }
}

class _ItemCard extends StatelessWidget {
  const _ItemCard({required this.item, required this.onTap});

  final TaskItem item;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PickOneController>(builder: (c) {
      final checked = c.picked == item;
      return GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            color: checked ? UTheme.success.withAlpha(125) : Colors.transparent,
            border: Border.all(),
          ),
          child: Center(
            child:
                Text(item.name, style: const TextStyle(fontSize: 20), textAlign: TextAlign.center),
          ),
        ),
      );
    });
  }
}
