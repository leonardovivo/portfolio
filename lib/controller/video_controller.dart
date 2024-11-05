import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';

class VideoControllerProvider with ChangeNotifier {
  late VideoPlayerController _controller;
  bool _isInitialized = false;
  bool _hasError = false;
  double _playbackSpeed = 1.0;
  double _currentPosition = 0.0;

  VideoControllerProvider(String videoPath) {
    _initialize(videoPath);
  }

  VideoPlayerController get controller => _controller;

  bool get isInitialized => _isInitialized;

  bool get hasError => _hasError;

  double get playbackSpeed => _playbackSpeed;

  double get currentPosition => _currentPosition;

  void _initialize(String videoPath) {
    _controller = VideoPlayerController.asset(videoPath)
      ..initialize().then((_) {
        _isInitialized = true;
        notifyListeners();
        _controller.play();
      }).catchError((error) {
        _hasError = true;
        notifyListeners();
      });

    _controller.addListener(() {
      _currentPosition = _controller.value.position.inSeconds.toDouble();
      notifyListeners();
    });
  }

  void togglePlayPause() {
    if (_controller.value.isPlaying) {
      _controller.pause();
    } else {
      _controller.play();
    }
    notifyListeners();
  }

  void changeSpeed(double speed) {
    _playbackSpeed = speed;
    _controller.setPlaybackSpeed(_playbackSpeed);
    notifyListeners();
  }

  void seekTo(double value) {
    final position = Duration(seconds: value.toInt());
    _controller.seekTo(position);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
