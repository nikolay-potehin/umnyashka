import 'package:flutter/material.dart';
import 'package:umnyashka/core/constants/theme.dart';

abstract class UIcons {
  static Widget get motorbike => Icon(Icons.two_wheeler, size: 100, color: UTheme.red);
  static Widget get key => Icon(Icons.key, size: 50, color: UTheme.yellow);
  static Widget get leaf => Icon(Icons.eco, size: 60, color: UTheme.success);
  static Widget get bag => Icon(Icons.work, size: 70, color: UTheme.purple);
  static Widget get sofa => Icon(Icons.chair, size: 90, color: UTheme.blue);
}
