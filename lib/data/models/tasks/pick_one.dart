part of 'task.dart';

class PickOneTask extends Task {
  PickOneTask(this.items, this.solution, {this.voice})
      : assert(solution >= 0 && solution < items.length);

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
