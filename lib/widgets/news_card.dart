import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({
    super.key,
  });



  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          border: Border.all(), borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            "assets/images/image.png",
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "40-year-old man falls 200 feet to his death while canyoneering at national park",
            style: textTheme.titleMedium,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  "By : DANIEL NIEMANN Associated Press, MIKE CORDER Associated Press",
                  style:
                      textTheme.bodySmall!.copyWith(color: Color(0xffA0A0A0)),
                  overflow: TextOverflow.clip,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Text(
                  "15 minutes ago",
                  style:
                      textTheme.bodySmall!.copyWith(color: Color(0xffA0A0A0)),
                  overflow: TextOverflow.clip,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
