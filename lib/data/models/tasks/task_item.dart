part of 'task.dart';

class TaskItem {
  TaskItem({required this.name, required this.image});
  final String name;
  final Widget image;

  factory TaskItem.bag() => TaskItem(name: 'Чемодан', image: UIcons.bag);
  factory TaskItem.motorbike() => TaskItem(name: 'Мотоцикл', image: UIcons.motorbike);
  factory TaskItem.leaf() => TaskItem(name: 'Листок', image: UIcons.leaf);
  factory TaskItem.key() => TaskItem(name: 'Ключ', image: UIcons.key);
  factory TaskItem.sofa() => TaskItem(name: 'Диван', image: UIcons.sofa);
}
