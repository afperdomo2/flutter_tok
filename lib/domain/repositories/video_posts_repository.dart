import 'package:flutter_tok/domain/entities/video_post.dart';

abstract class VideoPostsRepository {
  Future<List<VideoPost>> getTrendingVideosByPage(int page);

  Future<List<VideoPost>> getFavoriteVideosByUser(String userId);
}
