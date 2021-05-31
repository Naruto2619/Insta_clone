import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:insta_clone/widget/feed.dart';
import '../custom_icons.dart';

class InstaFeedScreen extends StatefulWidget {
  @override
  static const routename = '/instafeedscreen';
  _InstaFeedScreenState createState() => _InstaFeedScreenState();
}

class _InstaFeedScreenState extends State<InstaFeedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: Icon(FontAwesomeIcons.plusSquare),
          title: Text(
            'Instagram',
            style: TextStyle(fontFamily: 'Titl', fontSize: 35),
          ),
          centerTitle: true,
          actions: [
            IconButton(
                icon: Icon(FontAwesomeIcons.facebookMessenger),
                onPressed: () {})
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Feed(),
          ),
        ),
        bottomNavigationBar: Container(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: 5),
                child: Icon(
                  Icons.home_outlined,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              Icon(Icons.search_outlined, color: Colors.white, size: 30),
              Icon(Custom.instagram_reels, color: Colors.white, size: 25),
              Icon(Icons.favorite_border_outlined,
                  color: Colors.white, size: 29),
              Container(
                margin: EdgeInsets.only(right: 5),
                width: 30,
                height: 30,
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/image/user.png'),
                ),
              )
            ],
          ),
        ));
  }
}
