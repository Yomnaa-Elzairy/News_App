import 'package:flutter/material.dart';
import 'package:news/core/routes.dart';
import 'package:news/core/theme.dart';

class HomeDrawer extends StatelessWidget {
  final VoidCallback ontap;
  const HomeDrawer({super.key, required this.ontap});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Drawer(
      backgroundColor: Apptheme.black,
      shape: BeveledRectangleBorder(),
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: MediaQuery.sizeOf(context).height * 0.3,
            width: double.infinity,
            color: Apptheme.white,
            child: Text(
              "News App",
              style: textTheme.headlineSmall,
            ),
          ),
          GestureDetector(
            onTap: () {
              ontap();
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.home_filled,
                    color: Apptheme.white,
                    size: 35,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Go to Home",
                    style: textTheme.headlineSmall!
                        .copyWith(color: Apptheme.white),
                  ),
                ],
              ),
            ),
          ),
          Divider(
            indent: 20,
            endIndent: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.format_paint_outlined,
                      color: Apptheme.white,
                      size: 35,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Theme",
                      style: textTheme.headlineSmall!
                          .copyWith(color: Apptheme.white),
                    ),
                  ],
                ),
                DropdownButton(items: [
                  DropdownMenuItem(
                    value: "Dark",
                    child: Text("Dark"),
                  ),
                  DropdownMenuItem(
                    value: "Light",
                    child: Text("Light"),
                  )
                ], onChanged: (value) {})
              ],
            ),
          ),
          Divider(
            indent: 20,
            endIndent: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.public,
                      color: Apptheme.white,
                      size: 35,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Language",
                      style: textTheme.headlineSmall!
                          .copyWith(color: Apptheme.white),
                    ),
                  ],
                ),
                DropdownButton(items: [
                  DropdownMenuItem(
                    value: "English",
                    child: Text("English"),
                  ),
                  DropdownMenuItem(
                    value: "Arabic",
                    child: Text("Arabic"),
                  )
                ], onChanged: (value) {})
              ],
            ),
          ),
        ],
      ),
    );
  }
}
