import 'dart:math';
import 'package:flutter/material.dart';
import 'package:portfolio_leonardo_vivo/controller/video_controller.dart';
import 'package:provider/provider.dart';
import 'package:video_player/video_player.dart';

class VideoWidget extends StatelessWidget {
  final String videoPath;

  const VideoWidget({super.key, required this.videoPath});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => VideoControllerProvider(videoPath),
      child: Consumer<VideoControllerProvider>(
        builder: (context, videoController, child) {
          if (videoController.hasError) {
            return const Text('Erro ao carregar o vídeo');
          }

          final screenWidth = MediaQuery.of(context).size.width;

          double videoWidth;
          if (screenWidth <= 600) {
            videoWidth = screenWidth * 0.95;
          } else if (screenWidth < 1024) {
            videoWidth = screenWidth * 0.8;
          } else {
            videoWidth = min(screenWidth * 0.6, 900);
          }

          final double playButtonSize = screenWidth <= 600
              ? 40
              : screenWidth < 1024
                  ? 45
                  : 50;
          final double playIconSize = screenWidth <= 600
              ? 22
              : screenWidth < 1024
                  ? 28
                  : 32;

          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (videoController.isInitialized)
                Center(
                  child: SizedBox(
                    width: videoWidth,
                    child: AspectRatio(
                      aspectRatio: videoController.controller.value.aspectRatio,
                      child: VideoPlayer(videoController.controller),
                    ),
                  ),
                ),
              const SizedBox(height: 8),
              if (videoController.isInitialized)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.replay_10),
                        onPressed: () {
                          final newPosition =
                              videoController.currentPosition - 10;
                          videoController.seekTo(newPosition.clamp(
                            0,
                            videoController.controller.value.duration.inSeconds
                                .toDouble(),
                          ));
                        },
                      ),
                      Expanded(
                        child: Slider(
                          value: videoController.currentPosition,
                          min: 0.0,
                          max: videoController
                              .controller.value.duration.inSeconds
                              .toDouble(),
                          onChangeStart: (value) {
                            videoController.pauseUpdates();
                          },
                          onChanged: (value) {
                            videoController.seekTo(value);
                          },
                          onChangeEnd: (value) {
                            videoController.resumeUpdates();
                          },
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.forward_10),
                        onPressed: () {
                          final newPosition =
                              videoController.currentPosition + 10;
                          videoController.seekTo(newPosition.clamp(
                            0,
                            videoController.controller.value.duration.inSeconds
                                .toDouble(),
                          ));
                        },
                      ),
                    ],
                  ),
                ),
              const SizedBox(height: 8),
              Container(
                width: playButtonSize,
                height: playButtonSize,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 145, 0, 255),
                ),
                child: IconButton(
                  icon: Icon(
                    videoController.controller.value.isPlaying
                        ? Icons.pause
                        : Icons.play_arrow,
                    size: playIconSize,
                    color: Colors.white,
                  ),
                  onPressed: videoController.togglePlayPause,
                ),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Velocidade:",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Slider(
                        value: videoController.playbackSpeed,
                        min: 0.5,
                        max: 2.0,
                        divisions: 15,
                        label:
                            "${videoController.playbackSpeed.toStringAsFixed(1)}x",
                        onChanged: (value) {
                          videoController.changeSpeed(value);
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                "Velocidade atual: ${videoController.playbackSpeed.toStringAsFixed(1)}x",
                style: const TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
