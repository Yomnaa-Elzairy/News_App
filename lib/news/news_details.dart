import 'package:flutter/material.dart';
import 'package:news/core/theme.dart';

class NewsDetails extends StatelessWidget {
  const NewsDetails({
    super.key,
  });



  @override
  
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                "assets/images/image.png",
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "A 40-year-old man has fallen approximately 200 feet to his death while canyoneering with three others at Zion National Park in Utah, authorities confirmed.\r\nThe incident occurred on Saturday when the… [+1529 chars]",
                style: textTheme.bodyLarge!
                    .copyWith(color: Apptheme.white),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        // padding: EdgeInsets.all(8),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(16)),
                        backgroundColor: Apptheme.white,
                        foregroundColor: Apptheme.black),
                    child: Text(
                      'View Full Article',
                      style: textTheme.titleMedium,
                    )),
              )
            ],
          ),
        );
  }
}
