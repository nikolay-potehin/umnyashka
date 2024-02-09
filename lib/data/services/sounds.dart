import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';

class SoundsService extends GetxService {
  final player = AudioPlayer();

  Future<void> playLessonCompleted() async {
    await player.setAsset('assets/sounds/award.mp3');
    player.play();
  }

  Future<void> playStepProgress() async {
    await player.setAsset('assets/sounds/success.mp3');
    player.play();
  }
}
