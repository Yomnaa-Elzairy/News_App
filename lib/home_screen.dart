import 'package:flutter/material.dart';
import 'package:news/categories/category_view.dart';
import 'package:news/drawer/home_drawer.dart';
import 'package:news/models/category_model.dart';
import 'package:news/news/news_view.dart';

class HomeScreen extends StatefulWidget {
  static String widgeName = "HomeScreen";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  CategoryModel? selectedCategory;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
        appBar: AppBar(
          title: Text(
            selectedCategory == null ? "Home" : selectedCategory!.name,
            style: textTheme.headlineSmall,
          ),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
        ),
        body: selectedCategory == null
            ? CategoryView(onCategorySelected: onCategorySelected)
            : NewsView(
                categoryId: selectedCategory!.id,
              ),
        drawer: HomeDrawer(
          ontap: ondrawerTapped,
        ));
  }

  void onCategorySelected(CategoryModel category) {
    selectedCategory = category;
    setState(() {});
  }

  void ondrawerTapped() {
    selectedCategory = null;
    setState(() {});
  }
}
