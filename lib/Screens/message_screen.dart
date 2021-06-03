import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:insta_clone/widget/message_tile.dart';
import 'package:page_transition/page_transition.dart';
import '../dummy_data.dart';
import '../models/story.dart';

class MsgScreen extends StatelessWidget {
  final data = DummyData().items;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('User_Name'),
        actions: [
          Icon(
            (Icons.videocam_outlined),
            size: 35,
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            padding: EdgeInsets.only(right: 10),
            child: Icon(FontAwesomeIcons.edit),
          )
        ],
      ),
      body: Container(
        color: Colors.black,
        child: ListView(children: [
          Stack(alignment: Alignment.center, children: [
            Container(
              height: 60,
              color: Colors.black,
            ),
            Container(
              height: 35,
              width: 360,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(32, 32, 32, 1),
                  borderRadius: BorderRadius.circular(10)),
            ),
            Positioned(
                left: 30,
                bottom: 20,
                top: 18,
                child: Icon(
                  Icons.search,
                  size: 24,
                  color: Colors.grey,
                )),
            Positioned(
                left: 65,
                bottom: 20,
                top: 22,
                child: Text(
                  'Search',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ))
          ]),
          SizedBox(
            height: 15,
          ),
          Container(
            margin: EdgeInsets.only(left: 16),
            child: Text(
              'Messages',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          ...data.map((e) => MsgTile(e.name, e.imgUrl)).toList(),
        ]),
      ),
    );
  }
}
