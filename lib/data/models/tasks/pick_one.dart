import 'package:umnyashka/data/models/tasks/task.dart';

typedef TaskItem = String;

class PickOneTask extends Task {
  PickOneTask(this.items, this.solution);

  final List<TaskItem> items;
  final int solution;

  TaskItem? picked;

  void pick(TaskItem item) => picked = item;

  @override
  bool check() => picked == items[solution];
}
