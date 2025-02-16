import 'package:flutter/material.dart';
import 'package:news/core/theme.dart';
import 'package:news/widgets/home_drawer.dart';
import 'package:news/widgets/news_card.dart';
import 'package:news/widgets/news_details.dart';

class CategoryView extends StatelessWidget {
  static String widgetName = "Category View";
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    String category = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          category.toUpperCase(),
          style: textTheme.headlineSmall,
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      drawer: HomeDrawer(),
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.separated(
              itemCount: 7,
              separatorBuilder: (context, index) => SizedBox(
                    height: 20,
                  ),
              itemBuilder: (_, index) => GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        backgroundColor: Apptheme.black,
                        context: context,
                        builder: (_) => NewsDetails());
                  },
                  child: NewsCard()))),
    );
  }
}
