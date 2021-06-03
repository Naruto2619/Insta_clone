import 'package:flutter/material.dart';
import 'package:insta_clone/Screens/message_screen.dart';
import '../dummy_data.dart';
import './main_feed.dart';
import 'story_circle.dart';
import 'package:page_transition/page_transition.dart';

class Feed extends StatelessWidget {
  final _items = DummyData().items;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanUpdate: (dis) {
        if (dis.delta.dx > 0) {
          return;
        } else if (dis.delta.dx < 0) {
          Navigator.push(
              context,
              PageTransition(
                  type: PageTransitionType.rightToLeft, child: MsgScreen()));
        }
      },
      child: ListView(shrinkWrap: true, children: [
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
      ]),
    );
  }
}
