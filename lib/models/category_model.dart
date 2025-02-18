import 'package:flutter/material.dart';

class CategoryModel {
  final String id;
  final String name;
  final String image;

  CategoryModel({required this.id, required this.name, required this.image});
 static List<CategoryModel> categories = [
    CategoryModel(id: "1", name: "General", image: "general",),
    CategoryModel(id: "2", name: "businnes", image:       "business",),
    CategoryModel(id: "3", name: "sports", image:       "sports",),
    CategoryModel(id: "4", name: "technology", image:       "technology",),
    CategoryModel(id: "5", name: "science", image:       "science",),
    CategoryModel(id: "6", name: "health", image:       "health",),
    CategoryModel(id: "7", name: "entertainment", image:       "entertainment"),
  ];
}
