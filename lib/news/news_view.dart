import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:news/core/theme.dart';
import 'package:news/models/source_model.dart';
import 'package:news/news/news_card.dart';
import 'package:news/news/tab_item.dart';

class NewsView extends StatefulWidget {
  static String widgetName = "Category View";
 final String categoryId;
  const NewsView({super.key,required this.categoryId});

  @override
  State<NewsView> createState() => _NewsViewState();
}

class _NewsViewState extends State<NewsView> {
  List<SourceModel> sources =
      List.generate(5, (index) => SourceModel(id: index, name: "source$index"));

  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            DefaultTabController(
              length: sources.length,
              child: TabBar(
                  isScrollable: true,
                  dragStartBehavior: DragStartBehavior.start,
                  indicatorColor: Apptheme.black,
                  labelColor: Apptheme.black,
                  tabAlignment: TabAlignment.start,
                  onTap: (index) {
                    if (currentIndex == index) return;
                    currentIndex = index;
                    setState(() {});
                  },
                  tabs: sources
                      .map((source) => TabItem(sourceModel: source))
                      .toList()),
            ),
            Expanded(
              child: ListView.separated(
                itemCount: 7,
                separatorBuilder: (context, index) => SizedBox(
                  height: 20,
                ),
                itemBuilder: (_, index) => NewsCard(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
