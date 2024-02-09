import 'package:flutter/material.dart';
import 'package:umnyashka/core/constants/theme.dart';

class UScaffold extends StatelessWidget {
  const UScaffold({super.key, required this.body});

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UTheme.background,
      body: SafeArea(
        child: body,
      ),
    );
  }
}
