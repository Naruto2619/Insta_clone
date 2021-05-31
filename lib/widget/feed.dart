import 'package:flutter/material.dart';
import '../models/story.dart';
import './main_feed.dart';
import 'story_circle.dart';

class Feed extends StatelessWidget {
  final List<Story> _items = [
    Story('Jake Peralta', 'assets/image/jake.jpg'),
    Story('Amy Santiago', 'assets/image/amy.jpg'),
    Story('Raymond Holt', 'assets/image/holt.jpg'),
    Story('Rosa Diaz', 'assets/image/rosa.jpg'),
    Story('Charles Boyle', 'assets/image/charles.jpg'),
    Story('Terry Crews', 'assets/image/terry.jpg'),
    Story('Norm Scully', 'assets/image/scully.jpg'),
    Story('Micheal Hitchcock', 'assets/image/hitchcock.jpg')
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(shrinkWrap: true, children: [
      Container(
        height: MediaQuery.of(context).size.height * 0.86,
        child: ListView(children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.14,
            margin: EdgeInsets.all(8),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 8,
              padding: EdgeInsets.all(5),
              itemBuilder: (ctx, i) =>
                  StoryCircle(_items[i].name, _items[i].imgUrl),
              scrollDirection: Axis.horizontal,
            ),
          ),
          ..._items.map((e) {
            return MainFeed(e.name, e.imgUrl);
          }).toList(),
          SizedBox(
            height: 60,
          )
        ]),
      )
    ]);
  }
}
