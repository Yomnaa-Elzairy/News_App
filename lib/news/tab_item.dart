import 'package:flutter/material.dart';
import 'package:news/models/source_model.dart';

class TabItem extends StatelessWidget {
  TabItem({super.key, required this.sourceModel});
  SourceModel sourceModel;
  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Text(sourceModel.name),
    );
  }
}
