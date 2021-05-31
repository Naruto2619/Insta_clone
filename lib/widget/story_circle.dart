import 'package:flutter/material.dart';
import '../models/story.dart';

class StoryCircle extends StatelessWidget {
  final String name;
  final String imgUrl;
  StoryCircle(this.name, this.imgUrl);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      // margin: EdgeInsets.all(3),
      child: Column(
        children: [
          Stack(alignment: Alignment.center, children: [
            Container(
              width: 72,
              height: 72,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                  gradient:
                      LinearGradient(colors: [Colors.pink, Colors.orange])),
            ),
            Container(
              width: 67,
              height: 67,
              child: CircleAvatar(
                backgroundImage: AssetImage(imgUrl),
              ),
            ),
          ]),
          // constraints: BoxConstraints(minWidth: 50, minHeight: 50),
          //
          FittedBox(
            child: Text(
              name,
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}
