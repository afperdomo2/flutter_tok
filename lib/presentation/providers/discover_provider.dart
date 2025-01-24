import 'package:flutter/material.dart';
import 'package:flutter_tok/domain/entities/video_post.dart';
import 'package:flutter_tok/infrastructure/models/local_video_model.dart';
import 'package:flutter_tok/shared/data/local_video_posts.dart';

class DiscoverProvider extends ChangeNotifier {
  bool isLoading = true;
  List<VideoPost> videos = [];

  Future<void> loadNextPage() async {
    // await Future.delayed(const Duration(seconds: 2));
    final List<VideoPost> newVideos = videoPosts
        .map((video) => LocalVideoModel.fromJson(video).toVideoPostEntity())
        .toList();
    videos.addAll(newVideos);
    isLoading = false;
    notifyListeners();
  }
}
