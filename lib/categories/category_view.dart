import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:news/categories/category_card.dart';
import 'package:news/models/category_model.dart';

// ignore: must_be_immutable
class CategoryView extends StatelessWidget {
  static String widgetName = "Home View";
  void Function(CategoryModel) onCategorySelected;
  CategoryView({super.key, required this.onCategorySelected});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
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
                  itemBuilder: (_, index) => InkWell(
                        onTap: () {
                          onCategorySelected(CategoryModel.categories[index]);
                        },
                        child: CategoryCard(
                          imageName: CategoryModel.categories[index].image,
                          isEven: index.isEven ? true : false,
                          onCategorySelected: onCategorySelected,
                        ),
                      ),
                  separatorBuilder: (_, index) => SizedBox(
                        height: 20,
                      ),
                  itemCount: CategoryModel.categories.length)
            ],
          ),
        ),
      ),
    );
  }
}
