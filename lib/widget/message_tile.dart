import 'package:flutter/material.dart';
import 'package:insta_clone/widget/main_feed.dart';
import 'dart:math';
import 'package:page_transition/page_transition.dart';

class MsgTile extends StatelessWidget {
  final String imgurl;
  final String name;
  final List<String> status = [
    'Shared a post',
    'Liked a message',
    'Active 4h ago',
    'Sent Cheddar_fan_page\'s video',
    'Cool Cool Cool Cool Cool'
  ];
  var rnd = Random();
  var index = Random().nextInt(4);
  MsgTile(this.name, this.imgurl);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanUpdate: (dis) {
        if (dis.delta.dx > 0) {
          Navigator.pop(
              context,
              PageTransition(
                  type: PageTransitionType.leftToRight,
                  child: MainFeed(name, imgurl)));
        } else if (dis.delta.dx < 0) {
          return;
        }
      },
      child: Container(
        height: 80,
        child: ListTile(
          tileColor: Colors.black,
          leading: CircleAvatar(
            backgroundImage: AssetImage(imgurl),
          ),
          title: Text(
            name,
            style: TextStyle(color: Colors.white),
          ),
          subtitle: Text(
            status[index],
            style: TextStyle(color: Colors.white),
          ),
          trailing: Icon(
            Icons.camera_alt_outlined,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
