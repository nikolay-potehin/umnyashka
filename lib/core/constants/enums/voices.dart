// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';
import 'package:umnyashka/data/services/sounds.dart';

enum Voices {
  pick_lightest,
  pick_heaviest,
  pick_biggest,
  pick_smallest,
  pick_narrowest,
  pick_widest,
  very_good,
  try_again,
}

extension Voiceover on Voices {
  String get assetName => 'assets/voices/$name.mp3';

  void sound() => Get.find<SoundsService>().playVoice(this);
}
