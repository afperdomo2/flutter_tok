import 'package:flutter_tok/domain/datasources/video_posts_datasource.dart';
import 'package:flutter_tok/domain/entities/video_post.dart';
import 'package:flutter_tok/infrastructure/models/local_video_model.dart';
import 'package:flutter_tok/shared/data/local_video_posts.dart';

class LocalVideosDataSourceImpl implements VideoPostsDataSource {
  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userId) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) async {
    await Future.delayed(const Duration(seconds: 2));

    final List<VideoPost> newVideos =
        videoPosts.map((video) => LocalVideoModel.fromJson(video).toVideoPostEntity()).toList();

    return newVideos;
  }
}
