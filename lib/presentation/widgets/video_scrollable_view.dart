import 'package:flutter/material.dart';
import 'package:flutter_tok/domain/entities/video_post.dart';
import 'package:flutter_tok/presentation/widgets/fullscreen_player.dart';
import 'package:flutter_tok/presentation/widgets/video_buttons.dart';

class VideoScrollableView extends StatelessWidget {
  final List<VideoPost> videos;

  const VideoScrollableView({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemCount: videos.length,
      itemBuilder: (context, index) {
        final video = videos[index];
        return Stack(
          children: [
            // Video player + gradient
            SizedBox.expand(
                child: FullscreenPlayer(
                    title: video.name, videoUrl: video.videoUrl)),

            // Buttons
            Positioned(bottom: 30, right: 10, child: VideoButton(video: video)),
          ],
        );
      },
    );
  }
}
