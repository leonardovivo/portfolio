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

          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (videoController.isInitialized)
                AspectRatio(
                  aspectRatio: videoController.controller.value.aspectRatio,
                  child: VideoPlayer(videoController.controller),
                ),
              const SizedBox(height: 5),
              if (videoController.isInitialized)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.replay_10),
                      onPressed: () {
                        videoController.seekTo(
                            (videoController.currentPosition - 10).clamp(
                                0,
                                videoController
                                    .controller.value.duration.inSeconds
                                    .toDouble()));
                      },
                    ),
                    Expanded(
                      child: Slider(
                        value: videoController.currentPosition,
                        min: 0.0,
                        max: videoController.controller.value.duration.inSeconds
                            .toDouble(),
                        onChanged: (value) {
                          videoController.seekTo(value);
                        },
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.forward_10),
                      onPressed: () {
                        videoController.seekTo(
                            (videoController.currentPosition + 10).clamp(
                                0,
                                videoController
                                    .controller.value.duration.inSeconds
                                    .toDouble()));
                      },
                    ),
                  ],
                ),
              const SizedBox(height: 5),
              Container(
                width: 45,
                height: 45,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 145, 0, 255),
                ),
                child: IconButton(
                  icon: Icon(
                    videoController.controller.value.isPlaying
                        ? Icons.pause
                        : Icons.play_arrow,
                    size: 28,
                    color: Colors.white,
                  ),
                  onPressed: videoController.togglePlayPause,
                ),
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Velocidade:",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
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
