import 'package:meta/meta.dart';
import 'package:audioplayers/audioplayers.dart';


  /// For getting the audio controller state, to know whether the
  /// video is playing or paused currently.
  ///
  /// The two required parameters are [startValue] & [endValue]
  ///
  /// * [startValue] is the current starting point of the video.
  /// * [endValue] is the current ending point of the video.
  ///
  /// Returns a `Future<bool>`, if `true` then video is playing
  /// otherwise paused.


Future<bool> audioPlaybackControl({
  @required double startValue,
  @required double endValue,
  @required AudioPlayer audioPlayer,
  @required int currentPositionInMilliSeconds, 
}) async {
  if (audioPlayer.state == AudioPlayerState.PLAYING) {
    await audioPlayer.pause();
    return false;
  } else {
    // Trimmer.currentPlayerPosition = Trimmer.currentPlayerPosition ??
    //     await audioPlayer.getCurrentPosition();

    if (currentPositionInMilliSeconds >= endValue.toInt()) {
      await audioPlayer.seek(Duration(milliseconds: startValue.toInt()));
      await audioPlayer.resume();
      return true;
    } else {
      await audioPlayer.resume();
      return true;
    }
  }
}
