import 'package:flutter/material.dart';
import 'package:news/core/routes.dart';
import 'package:news/core/theme.dart';

class CategoryCard extends StatelessWidget {
  final String imageName;
  final bool isEven;
  final Function onCategorySelected;
  const CategoryCard(
      {super.key, required this.imageName, required this.isEven,required this.onCategorySelected});

  @override
  Widget build(BuildContext context) {
    return Stack(
        alignment: isEven ? Alignment.bottomRight : Alignment.bottomLeft,
        children: [
          Container(
            height: MediaQuery.sizeOf(context).height * 0.25,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              image: DecorationImage(
                  image: AssetImage(
                    "assets/images/$imageName.png",
                  ),
                  fit: BoxFit.fill),
            ),
          ),
          Container(
            margin: EdgeInsets.all(24),
            padding:
                isEven ? EdgeInsets.only(left: 16) : EdgeInsets.only(right: 16),
            height: MediaQuery.sizeOf(context).height * 0.08,
            width: MediaQuery.sizeOf(context).width * 0.5,
            decoration: BoxDecoration(
                color: Apptheme.grey, borderRadius: BorderRadius.circular(32)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: isEven
                  ? [
                      Text(
                        "View all",
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      Container(
                        height: MediaQuery.sizeOf(context).height * 0.08,
                        width: MediaQuery.sizeOf(context).width * 0.18,
                        decoration: BoxDecoration(
                            color: Apptheme.white, shape: BoxShape.circle),
                        child: Icon(Icons.arrow_forward_ios),
                      ),
                    ]
                  : [
                      Container(
                        height: MediaQuery.sizeOf(context).height * 0.08,
                        width: MediaQuery.sizeOf(context).width * 0.18,
                        decoration: BoxDecoration(
                            color: Apptheme.white, shape: BoxShape.circle),
                        child: Icon(Icons.arrow_back_ios),
                      ),
                      Text(
                        "View all",
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ],
            ),
          ),
        ]);
  }
}
