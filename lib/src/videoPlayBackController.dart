import 'package:meta/meta.dart';
import 'package:video_player/video_player.dart';


  /// For getting the video controller state, to know whether the
  /// video is playing or paused currently.
  ///
  /// The two required parameters are [startValue] & [endValue]
  ///
  /// * [startValue] is the current starting point of the video.
  /// * [endValue] is the current ending point of the video.
  ///
  /// Returns a `Future<bool>`, if `true` then video is playing
  /// otherwise paused.


  Future<bool> videoPlaybackControl({
    @required double startValue,
    @required double endValue,
    @required VideoPlayerController videoPlayerController
  }) async {
    if (videoPlayerController.value.isPlaying) {
      await videoPlayerController.pause();
      return false;
    } else {
      if (videoPlayerController.value.position.inMilliseconds >=
          endValue.toInt()) {
        await videoPlayerController
            .seekTo(Duration(milliseconds: startValue.toInt()));
        await videoPlayerController.play();
        return true;
      } else {
        await videoPlayerController.play();
        return true;
      }
    }
  }
