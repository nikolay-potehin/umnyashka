import 'package:flutter/material.dart';
import 'package:umnyashka/core/constants/enums/voices.dart';
import 'package:umnyashka/core/constants/icons.dart';

part 'task_item.dart';
part 'pick_one.dart';

abstract class Task {
  bool check();
  void reset();
}
