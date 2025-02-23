import 'package:flutter/material.dart';

class CategoryModel {
  final String id;
  final String name;
  final String image;

  CategoryModel({required this.id, required this.name, required this.image});
  static List<CategoryModel> categories = [
    CategoryModel(
      id: "general",
      name: "General",
      image: "general",
    ),
    CategoryModel(
      id: "business",
      name: "Business",
      image: "business",
    ),
    CategoryModel(
      id: "sports",
      name: "Sports",
      image: "sports",
    ),
    CategoryModel(
      id: "technology",
      name: "Technology",
      image: "technology",
    ),
    CategoryModel(
      id: "science",
      name: "Science",
      image: "science",
    ),
    CategoryModel(
      id: "health",
      name: "Health",
      image: "health",
    ),
    CategoryModel(
        id: "entertainment", name: "Entertainment", image: "entertainment"),
  ];
}
