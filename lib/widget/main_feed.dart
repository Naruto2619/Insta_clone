import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:insta_clone/widget/feed_circle.dart';

class MainFeed extends StatefulWidget {
  final String name;
  final String imgurl;
  MainFeed(this.name, this.imgurl);

  @override
  _MainFeedState createState() => _MainFeedState();
}

class _MainFeedState extends State<MainFeed> {
  bool _isliked = false;
  void updateheart() {
    setState(() {
      _isliked = !_isliked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      decoration: BoxDecoration(
        color: Colors.black,
        // border: Border.all(width: 1, color: Colors.white),
      ),
      child: Column(
        children: [
          Container(
            width: 400,
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(widget.imgurl),
              ),
              title: Container(
                child: Text(
                  widget.name,
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ),
              trailing: Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
            ),
          ),
          GestureDetector(
            onDoubleTap: updateheart,
            child: Container(
              height: 320,
              child: Image.asset(
                widget.imgurl,
                height: 320,
                width: 400,
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(
            height: 3,
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  width: 20,
                  padding: const EdgeInsets.all(7.0),
                  child: IconButton(
                    iconSize: 24,
                    onPressed: updateheart,
                    icon: _isliked
                        ? Icon(Icons.favorite)
                        : Icon(Icons.favorite_border_outlined),
                    color: _isliked ? Colors.red : Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(7.0),
                child: Icon(
                  FontAwesomeIcons.comment,
                  size: 20,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Icon(
                  FontAwesomeIcons.paperPlane,
                  size: 20,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 242,
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Icon(
                  Icons.bookmark_border,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(left: 8),
            alignment: Alignment.centerLeft,
            child: Text(
              '69,420  Likes',
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Row(children: [
            Container(
              padding: EdgeInsets.only(left: 7),
              alignment: Alignment.centerLeft,
              child: Text(
                '${widget.name}',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 8),
              alignment: Alignment.centerLeft,
              child: Text(
                'Caption goes here#dumbaf',
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ),
          ]),
          SizedBox(
            height: 5,
          ),
          Container(
            margin: EdgeInsets.only(left: 8),
            alignment: Alignment.bottomLeft,
            child: Text('View all 69 comments',
                style: TextStyle(color: Colors.white, fontSize: 14)),
          )
        ],
      ),
    );
  }
}
