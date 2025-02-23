import 'package:flutter/material.dart';
import 'package:news/core/theme.dart';
import 'package:news/models/News/articles.dart';
import 'package:news/models/News/news_articles.dart';
import 'package:news/news/news_details.dart';

class NewsCard extends StatelessWidget {
  Articles news;
  NewsCard({super.key, required this.news});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
            backgroundColor: Apptheme.black,
            context: context,
            builder: (_) => NewsDetails());
      },
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            border: Border.all(), borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.network(
              errorBuilder: (context, error, stackTrace) => Text("No image"),
              news.urlToImage ??
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNNLEL-qmmLeFR1nxJuepFOgPYfnwHR56vcw&s",
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              news.title!,
              style: textTheme.titleMedium,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    "by: ${news.author ?? " "}",
                    style:
                        textTheme.bodySmall!.copyWith(color: Color(0xffA0A0A0)),
                    overflow: TextOverflow.clip,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Text(
                    news.publishedAt!,
                    style:
                        textTheme.bodySmall!.copyWith(color: Color(0xffA0A0A0)),
                    overflow: TextOverflow.clip,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
