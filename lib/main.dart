import 'package:flutter/material.dart';
import './Screens/insta_feed_screen.dart';

void main() => runApp(Insta());

class Insta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (ctx) => InstaFeedScreen(),
        InstaFeedScreen.routename: (ctx) => InstaFeedScreen(),
      },
    );
  }
}
