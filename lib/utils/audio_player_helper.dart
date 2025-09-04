import 'package:audioplayers/audioplayers.dart';

class AudioPlayerHelper {
  static final _player = AudioPlayer();
  static void playAudio(String soundPath) {
    _player.play(AssetSource("sounds/${soundPath}"));
  }
}
