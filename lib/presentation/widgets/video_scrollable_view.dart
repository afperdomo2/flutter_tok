import 'package:flutter/material.dart';
import 'package:flutter_tok/domain/entities/video_post.dart';

class VideoScrollableView extends StatelessWidget {
  final List<VideoPost> videos;

  const VideoScrollableView({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      children: [
        Container(
          color: Colors.red,
          child: Center(child: Text('Page 1')),
        ),
        Container(
          color: Colors.green,
          child: Center(child: Text('Page 2')),
        ),
        Container(
          color: Colors.blue,
          child: Center(child: Text('Page 3')),
        ),
      ],
    );
  }
}
