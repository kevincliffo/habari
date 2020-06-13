import 'package:flutter/material.dart';

class TopicPage extends StatefulWidget {
  TopicPage({Key key}) : super(key: key);

  @override
  _TopicPageState createState() => _TopicPageState();
}

class _TopicPageState extends State<TopicPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
  children: ListTile.divideTiles(
      context: context,
      tiles: [
        ListTile(
          title: Text('Sports'),
        ),
        ListTile(
          title: Text('Politics'),
        ),
        ListTile(
          title: Text('Medicine'),
        ),
        ListTile(
          title: Text('Business'),
        ),
        ListTile(
          title: Text('Weather'),
        ),
        ListTile(
          title: Text('Fashion'),
        ),
        ListTile(
          title: Text('Culture'),
        ),
        ListTile(
          title: Text('Entertainment'),
        ),
        ListTile(
          title: Text('Science and Technology'),
        ),
        ListTile(
          title: Text('Education'),
        ),
      ]
      ).toList(),
    );
  }
}