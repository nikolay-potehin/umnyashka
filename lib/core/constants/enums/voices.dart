// ignore_for_file: constant_identifier_names

enum Voices {
  pick_lightest,
  pick_heaviest,
  pick_biggest,
  pick_smallest,
  pick_narrowest,
  pick_widest,
  very_good,
}

extension VoicesAssets on Voices {
  String get assetName => 'assets/sounds/$name';
}
