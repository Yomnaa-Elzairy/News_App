import 'package:flutter/material.dart';
import 'package:news/core/routes.dart';
import 'package:news/core/theme.dart';
import 'package:news/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.homescreen,
      routes: {
        Routes.homescreen:(_)=>HomeScreen()
      },
      theme: Apptheme.lightTheme,
    );
  }
}
