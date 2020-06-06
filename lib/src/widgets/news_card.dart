import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  final String title;
  final String image_name;
  NewsCard({this.title, this.image_name});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 75.0,
              width: 75.0,
            ),
            SizedBox(width: 20),
            Container(
              height: 70.0,
              width: 100.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/"+image_name),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.horizontal(),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black,
                      blurRadius: 5.0,
                      offset: Offset(0.0, 5.0))
                ],
              ),
            ),
            SizedBox(width: 20.0),
            Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("$title",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                )),
              SizedBox(height: 5.0),
              SizedBox(height: 5.0),
              Container(
                height: 25.0,
                width: 120.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(right: 10.0),
                      child: Row(
                        children: <Widget>[
                          Text("$title",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(width: 5.0),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10.0),
                      child: Row(
                        children: <Widget>[
                          Text("$title",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(width: 5.0),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10.0),
                      child: Row(
                        children: <Widget>[
                          Text("$title",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(width: 5.0),
                        ],
                      ),
                    ),
                  ],
                )
              ),
            ],
          ),
          Spacer(),
        ],
      ),
    )
    );
  }
}
