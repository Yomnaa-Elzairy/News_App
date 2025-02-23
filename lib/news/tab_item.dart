import 'package:flutter/material.dart';
import 'package:news/models/sources%20response/sources.dart';

class TabItem extends StatelessWidget {
  TabItem({super.key, required this.sources});
  Sources sources;
  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Text(sources.name!),
    );
  }
}
