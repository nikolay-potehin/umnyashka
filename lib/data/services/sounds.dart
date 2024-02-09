import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';
import 'package:umnyashka/core/constants/enums/voices.dart';

class SoundsService extends GetxService {
  final _soundsPlayer = AudioPlayer();
  final _voicesPlayer = AudioPlayer();

  Future<void> playLessonCompleted() async {
    await _soundsPlayer.setAsset('assets/sounds/award.mp3');
    _soundsPlayer.play();
  }

  Future<void> playStepProgress() async {
    await _soundsPlayer.setAsset('assets/sounds/success.mp3');
    _soundsPlayer.play();
  }

  Future<void> playVoice(Voices voice) async {
    await _voicesPlayer.setAsset(voice.assetName);
    return _voicesPlayer.play();
  }
}
