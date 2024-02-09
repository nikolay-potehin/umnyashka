import 'package:flutter/material.dart';
import 'package:umnyashka/data/models/ucard.dart';
import 'package:umnyashka/widgets/play_button.dart';

class UCard extends StatelessWidget {
  const UCard({
    super.key,
    required this.data,
  });

  final UCardData data;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: data.color,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        boxShadow: const [
          BoxShadow(blurRadius: 8, color: Colors.grey, offset: Offset(4, 4)),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(data.title, style: const TextStyle(fontSize: 24)),
                Text(data.description, style: const TextStyle(fontSize: 16)),
              ],
            ),
          ),
          const PlayButton(),
        ],
      ),
    );
  }
}
