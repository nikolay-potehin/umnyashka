import 'package:umnyashka/core/constants/enums/voices.dart';
import 'package:umnyashka/data/models/tasks/task.dart';

typedef TaskItem = String;

class PickOneTask extends Task {
  PickOneTask(this.items, this.solution, {this.voice});

  final List<TaskItem> items;
  final Voices? voice;
  final int solution;

  TaskItem? picked;

  void pick(TaskItem item) => picked = item;

  @override
  bool check() => picked == items[solution];

  @override
  void reset() => picked = null;
}
