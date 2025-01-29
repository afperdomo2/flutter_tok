import 'package:flutter/material.dart';
import 'package:flutter_tok/domain/entities/video_post.dart';
import 'package:flutter_tok/domain/repositories/video_posts_repository.dart';

class DiscoverProvider extends ChangeNotifier {
  final VideoPostsRepository videosRepository;

  bool isLoading = true;
  List<VideoPost> videos = [];

  DiscoverProvider({required this.videosRepository});

  Future<void> loadNextPage() async {
    final newVideos = await videosRepository.getTrendingVideosByPage(1);

    videos.addAll(newVideos);
    isLoading = false;
    notifyListeners();
  }
}
