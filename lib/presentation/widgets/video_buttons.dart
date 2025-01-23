import 'package:flutter/material.dart';
import 'package:flutter_tok/config/helpers/human_formatter.dart';
import 'package:flutter_tok/domain/entities/video_post.dart';

class VideoButton extends StatelessWidget {
  final VideoPost video;

  const VideoButton({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Like button
        _CustomButton(
            value: video.likes, icon: Icons.favorite, iconColor: Colors.red),
        _CustomButton(value: video.views, icon: Icons.remove_red_eye_outlined)
        // Comment button
        // Share button
      ],
    );
  }
}

class _CustomButton extends StatelessWidget {
  final int value;
  final IconData icon;
  final Color? color;

  const _CustomButton({required this.value, required this.icon, iconColor})
      : color = iconColor ?? Colors.white;

  @override
  Widget build(BuildContext context) {
    var iconStyle = Icon(size: 40, icon, color: color);
    var formattedValue = HumanFormatter.formatLargeNumber(value.toDouble());
    return Column(
      children: [
        IconButton(onPressed: () {}, icon: iconStyle),
        Text(formattedValue, style: const TextStyle(color: Colors.white)),
      ],
    );
  }
}
