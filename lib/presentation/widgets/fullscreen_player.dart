import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class FullscreenPlayer extends StatefulWidget {
  final String title;
  final String videoUrl;

  const FullscreenPlayer(
      {super.key, required this.title, required this.videoUrl});

  @override
  State<FullscreenPlayer> createState() => _FullscreenPlayerState();
}

class _FullscreenPlayerState extends State<FullscreenPlayer> {
  late VideoPlayerController controller;

  @override
  void initState() {
    super.initState();
    controller = VideoPlayerController.asset(widget.videoUrl)
      ..setVolume(0)
      ..setLooping(true)
      ..play();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: controller.initialize(),
        builder: (context, snapshot) {
          if (snapshot.connectionState != ConnectionState.done) {
            return const Center(
                child: CircularProgressIndicator(
                    strokeWidth: 2, color: Colors.green));
          }
          return GestureDetector(
              onTap: toggleVideoPlayback,
              child: AspectRatio(
                  aspectRatio: controller.value.aspectRatio,
                  child: Stack(children: [
                    // Video player
                    VideoPlayer(controller),

                    // Gradient

                    // Title
                    _VideoTitle(title: widget.title),
                  ])));
        });
  }

  void toggleVideoPlayback() {
    controller.value.isPlaying ? controller.pause() : controller.play();
  }
}

class _VideoTitle extends StatelessWidget {
  final String title;
  const _VideoTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final titleStyle = Theme.of(context).textTheme.titleLarge;

    return Positioned(
      bottom: 50,
      left: 20,
      child: SizedBox(
          width: size.width * 0.6,
          child: Text(title, maxLines: 2, style: titleStyle)),
    );
  }
}
