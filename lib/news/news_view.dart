import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:news/api/api_services.dart';
import 'package:news/core/theme.dart';
import 'package:news/models/sources%20response/sources.dart';
import 'package:news/models/sources%20response/sources_response.dart';
import 'package:news/news/news_card.dart';
import 'package:news/news/tab_item.dart';
import 'package:news/widgets/error_widget.dart';
import 'package:news/widgets/loading.dart';

class NewsView extends StatefulWidget {
  static String widgetName = "Category View";
  final String categoryId;
  const NewsView({super.key, required this.categoryId});

  @override
  State<NewsView> createState() => _NewsViewState();
}

class _NewsViewState extends State<NewsView> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<SourcesResponse>(
      future: ApiServices.getSources(widget.categoryId),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return ErrorCase();
        } else if (snapshot.connectionState == ConnectionState.waiting) {
          return Loading();
        } else {
          List<Sources> sources = snapshot.data?.sources ?? [];

          return DefaultTabController(
            length: sources.length,
            child: Column(
              children: [
                TabBar(
                  isScrollable: true,
                  dragStartBehavior: DragStartBehavior.start,
                  indicatorColor: Apptheme.black,
                  labelColor: Apptheme.black,
                  tabAlignment: TabAlignment.start,
                  tabs: sources
                      .map((source) => TabItem(sources: source))
                      .toList(),
                ),
                Expanded(
                  child: TabBarView(
                    children: sources.map((source) {
                      return FutureBuilder(
                        future: ApiServices.getNewsArticles(source.id!),
                        builder: (context, snapshot) {
                            if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return Loading();
                          }
                         else if (snapshot.hasError) {
                            return ErrorCase();
                          } else {
                            return ListView.separated(
                              itemCount: snapshot.data!.articles!.length,
                              separatorBuilder: (context, index) =>
                                  SizedBox(height: 20),
                              itemBuilder: (_, index) => NewsCard(
                                news: snapshot.data!.articles![index],
                              ),
                            );
                          }
                        },
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          );
        }
      },
    );
  }
}
