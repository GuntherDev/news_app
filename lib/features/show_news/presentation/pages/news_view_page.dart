import 'package:flutter/material.dart';
import 'package:news_app/core/constants/palette.dart';
import 'package:news_app/features/show_news/domain/entities/news_info.dart';

class NewsViewPage extends StatelessWidget {
  final NewsInfo newsInfo;
  const NewsViewPage({Key? key, required this.newsInfo}) : super(key: key);

  String _getDateInDDDMMYYFormat(DateTime dateTime) {
    return '${dateTime.day}/${dateTime.month}/${dateTime.year}';
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Palette.background,
        appBar: AppBar(
            title: Text(''),
            elevation: 0,
            leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.arrow_back_ios_new_rounded,
                  color: Palette.deepBlue, size: 20),
            ),
            backgroundColor: Palette.background),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  newsInfo.title != null ? newsInfo.title! : '-- No title--',
                  style: const TextStyle(
                      color: Palette.deepBlue,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                Container(
                  height: 300,
                  color: Palette.lightGrey,
                  child: newsInfo.imageURL != null ? Image.network(
                      newsInfo.imageURL!,
                      fit: BoxFit.cover) : const SizedBox(),
                ),
                const SizedBox(height: 16),
                Text(
                  _getDateInDDDMMYYFormat(newsInfo.dateTime),
                  style: const TextStyle(
                    color: Palette.lightGrey,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  newsInfo.author != null ? newsInfo.author! : '-- No author --',
                  style: const TextStyle(
                    color: Palette.lightGrey,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  newsInfo.content != null ? newsInfo.content! : '-- No content --',
                  style: const TextStyle(
                    color: Palette.deepBlue,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 32),
              ],
            ),
          ),
        ),
      );
}
