import 'package:flutter/material.dart';
import 'package:flutter_tok/domain/entities/video_post.dart';

class VideoButton extends StatelessWidget {
  final VideoPost video;

  const VideoButton({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Like button
        _CustomIconButton(
            value: video.likes, icon: Icons.favorite, iconColor: Colors.red),
        _CustomIconButton(
            value: video.views, icon: Icons.remove_red_eye_outlined)
        // Comment button
        // Share button
      ],
    );
  }
}

class _CustomIconButton extends StatelessWidget {
  final int value;
  final IconData icon;
  final Color? color;

  const _CustomIconButton({required this.value, required this.icon, iconColor})
      : color = iconColor ?? Colors.white;

  @override
  Widget build(BuildContext context) {
    var iconStyle = Icon(size: 40, icon, color: color);
    return Column(
      children: [
        IconButton(onPressed: () {}, icon: iconStyle),
        Text('$value'),
      ],
    );
  }
}
