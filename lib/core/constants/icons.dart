import 'package:flutter/material.dart';

abstract class UIcons {
  static Widget get motorbike =>
      Image.asset('assets/images/motorbike.png', width: 120, height: 120);
  static Widget get key => Image.asset('assets/images/key-chain.png', width: 65, height: 65);
  static Widget get leaf => Image.asset('assets/images/leaf.png', width: 65, height: 65);
  static Widget get bag => Image.asset('assets/images/suitcase.png', width: 70, height: 70);
  static Widget get sofa => Image.asset('assets/images/seater-sofa.png', width: 110, height: 110);

  // static Widget get motorbike => Icon(Icons.two_wheeler, size: 100, color: UTheme.red);
  // static Widget get key => Icon(Icons.key, size: 50, color: UTheme.yellow);
  // static Widget get leaf => Icon(Icons.eco, size: 60, color: UTheme.success);
  // static Widget get bag => Icon(Icons.work, size: 70, color: UTheme.purple);
  // static Widget get sofa => Icon(Icons.chair, size: 90, color: UTheme.blue);
}
