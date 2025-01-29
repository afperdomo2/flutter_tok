import 'package:flutter/material.dart';
import 'package:flutter_tok/config/themes/app_theme.dart';
import 'package:flutter_tok/infrastructure/datasources/local_videos_datasource_impl.dart';
import 'package:flutter_tok/infrastructure/repositories/video_posts_repository_impl.dart';
import 'package:flutter_tok/presentation/providers/discover_provider.dart';
import 'package:flutter_tok/presentation/screens/discover_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final videoPostsRepository = VideoPostsRepositoryImpl(videosDataSource: LocalVideosDataSourceImpl());

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            lazy: false, create: (_) => DiscoverProvider(videosRepository: videoPostsRepository)..loadNextPage()),
      ],
      child: MaterialApp(
          title: 'Material App',
          debugShowCheckedModeBanner: false,
          theme: AppTheme().theme,
          home: const DiscoverScreen()),
    );
  }
}
