import 'package:flutter/material.dart';
import 'package:news/widgets/category_card.dart';
import 'package:news/widgets/home_drawer.dart';

class HomeView extends StatelessWidget {
  static String widgetName = "Home View";
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    List<String> images = [
      "general",
      "business",
      "sports",
      "technology",
      "science",
      "health",
      "entertainment"
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home",
          style: textTheme.headlineSmall,
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      drawer: HomeDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Good Morning",
                style: textTheme.headlineSmall,
              ),
              Text(
                "Here is Some News For You",
                style: textTheme.headlineSmall,
              ),
              SizedBox(
                height: 15,
              ),
              ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (_, index) => CategoryCard(
                        imageName: images[index],
                        isEven: index.isEven ? true : false,
                      ),
                  separatorBuilder: (_, index) => SizedBox(
                        height: 20,
                      ),
                  itemCount: images.length)
            ],
          ),
        ),
      ),
    );
  }
}
