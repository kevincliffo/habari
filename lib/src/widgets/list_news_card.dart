import 'package:flutter/material.dart';
import 'package:getflutter/getflutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ListNewsCard extends StatelessWidget {
  final String title;
  final String content;
  final String source;
  final String link;
  final String image_name;
  ListNewsCard({this.title, this.content, this.source, this.link, this.image_name});

  @override
  Widget build(BuildContext context) {
    return GFCard(
        boxFit: BoxFit.cover,
        image: Image.asset("assets/images/"+image_name),
        title: GFListTile(
            title: Text('$title'),
            icon: GFIconButton(
                onPressed: null,
                icon: Icon(Icons.favorite_border),
                type: GFButtonType.transparent,
            )
        ),
        content: Text("$content"),
        buttonBar: GFButtonBar(
          alignment: WrapAlignment.start,
          children: <Widget>[
            GFButton(
              onPressed: () {
                _launchURL(link);
              },
              text: 'Read More',
            ),
        ],
      ),
    );
  }

  _launchURL(String url) async {
    //const url = 'https://flutter.io';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }  
}

//   GFCard(
//     boxFit: BoxFit.cover,
//     image: Image.asset('your asset image'),
//     title: GFListTile(
//         title: Text('Card Title'),
//         icon: GFIconButton(
//             onPressed: null,
//             icon: Icon(Icons.favorite_border),
//             type: GFType.transparent,
//         )
//     ),
//     content: Text("Some quick example text to build on the card"),
//     buttonBar: GFButtonBar(
//       alignment: MainAxisAlignment.start,
//       children: <Widget>[
//         GFButton(
//           onPressed: () {},
//           text: 'Read More',
//         ),
//      ],
//    ),
//  ),