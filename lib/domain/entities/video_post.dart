class VideoPost {
  final String title;
  final String videoUrl;
  final int likes;
  final int views;

  VideoPost({
    required this.title,
    required this.videoUrl,
    this.likes = 0,
    this.views = 0,
  });

  @override
  String toString() {
    return 'VideoPost{title: $title, videoUrl: $videoUrl likes: $likes, views: $views}';
  }
}
