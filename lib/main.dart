import 'package:flutter/material.dart';
import 'package:news/core/routes.dart';
import 'package:news/core/theme.dart';
import 'package:news/views/category_view.dart';
import 'package:news/views/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.homeView,
      routes: {
        Routes.homeView:(_)=>HomeView(),
        Routes.categoryView:(_)=>CategoryView()
      },
      theme: Apptheme.lightTheme,
    );
  }
}