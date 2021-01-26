abstract class FileFormat {
  const FileFormat();
}

/// The video file formats available for
/// generating the output trimmed video.
///
/// The available formats are `mp4`, `mkv`,
/// `mov`, `flv`, `avi`, `wmv`& `gif`.
///
/// If you define a custom `FFmpeg` command
/// then this will be ignored.
///
///

class VideoFileFormat extends FileFormat {
  const VideoFileFormat._(this.index) : super();

  final int index;

  static const VideoFileFormat mp4 = VideoFileFormat._(0);
  static const VideoFileFormat mkv = VideoFileFormat._(1);
  static const VideoFileFormat mov = VideoFileFormat._(2);
  static const VideoFileFormat flv = VideoFileFormat._(3);
  static const VideoFileFormat avi = VideoFileFormat._(4);
  static const VideoFileFormat wmv = VideoFileFormat._(5);
  static const VideoFileFormat gif = VideoFileFormat._(6);

  static const List<VideoFileFormat> values = <VideoFileFormat>[
    mp4,
    mkv,
    mov,
    flv,
    avi,
    wmv,
    gif,
  ];

  @override
  String toString() {
    return const <int, String>{
      0: '.mp4',
      1: '.mkv',
      2: '.mov',
      3: '.flv',
      4: '.avi',
      5: '.wmv',
      6: '.gif',
    }[index];
  }
}

/// The video file formats available for
/// generating the output trimmed video.
///
/// The available formats are `mp4`, `mkv`,
/// `mov`, `flv`, `avi`, `wmv`& `gif`.
///
/// If you define a custom `FFmpeg` command
/// then this will be ignored.
///
class AudioFileFormat extends FileFormat {
  const AudioFileFormat._(this.index);
  final int index;
  static const AudioFileFormat mp3 = AudioFileFormat._(0);
  static const List<AudioFileFormat> values = <AudioFileFormat>[
    mp3,
  ];

  @override
  String toString() {
    return const <int, String>{
      0: '.mp3',
    }[index];
  }
}
