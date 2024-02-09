import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:umnyashka/widgets/scaffold.dart';

class PickOneLessonScreen extends StatelessWidget {
  const PickOneLessonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return UScaffold(
      body: Column(
        children: [
          const Text('Реши задачу', style: TextStyle(fontSize: 28)),
          const Padding(
            padding: EdgeInsets.all(20),
            child: StepProgressIndicator(totalSteps: 4),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
            ),
          ),
          Container(height: 10, color: Colors.white)
        ],
      ),
    );
  }
}
