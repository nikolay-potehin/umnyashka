import 'package:flutter/material.dart';

abstract class UDecorations {
  static BoxDecoration get outline => BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        border: Border.all(),
      );
}
