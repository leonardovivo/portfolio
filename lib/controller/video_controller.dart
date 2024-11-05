import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';

class VideoControllerProvider with ChangeNotifier {
  late VideoPlayerController _controller;
  bool _isInitialized = false;
  bool _hasError = false;
  double _playbackSpeed = 1.0;
  double _currentPosition = 0.0;
  bool _isUpdatingPosition = true;

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
        if (_controller.value.isInitialized) {
          _isInitialized = true;
          notifyListeners();
        }
      }).catchError((error) {
        _hasError = true;
        notifyListeners();
      });

    _controller.addListener(() {
      if (_isUpdatingPosition && _controller.value.isInitialized) {
        final newPosition = _controller.value.position.inSeconds.toDouble();
        if ((_currentPosition - newPosition).abs() > 0.5) {
          _currentPosition = newPosition;
          notifyListeners();
        }
      }
    });
  }

  void togglePlayPause() {
    if (_isInitialized) {
      if (_controller.value.isPlaying) {
        _controller.pause();
      } else {
        _controller.play();
      }
      notifyListeners();
    }
  }

  void changeSpeed(double speed) {
    if (_isInitialized) {
      _playbackSpeed = speed;
      _controller.setPlaybackSpeed(_playbackSpeed);
      notifyListeners();
    }
  }

  void seekTo(double value) {
    if (_isInitialized) {
      final position = Duration(seconds: value.toInt());
      _controller.seekTo(position);
      notifyListeners();
    }
  }

  void pauseUpdates() {
    _isUpdatingPosition = false;
  }

  void resumeUpdates() {
    _isUpdatingPosition = true;
    notifyListeners();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
