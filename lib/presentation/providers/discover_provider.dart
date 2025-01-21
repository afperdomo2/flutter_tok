import 'package:flutter/material.dart';
import 'package:flutter_tok/domain/entities/video_post.dart';

class DiscoverProvider extends ChangeNotifier {
  List<VideoPost> videos = [];

  Future<void> loadNextPage() async {
    notifyListeners();
  }
}
