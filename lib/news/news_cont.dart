import 'package:flutter/material.dart';
import 'package:news/api/api_service.dart';
import 'package:news/api/news.dart';
import 'package:news/news/news_item.dart';
import 'package:news/widget/error.dart';
import 'package:news/widget/loading.dart';

class NewList extends StatelessWidget {
  const NewList({required this.sourceId});

  final String sourceId;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: APIService.getNews(sourceId),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting)
          return Loading();
        else if (snapshot.hasError) {
          return ErrorIndicator();
        }
        else if (snapshot.data?.status != 'ok') {
          return ErrorIndicator();
        }

        final newList = snapshot.data?.articles ?? [];
       return ListView.builder(
          itemBuilder: (BuildContext context, int index) =>
              NewsItem(newList[index] as News),
          itemCount: newList.length,
        );
      },
    );
  }
}