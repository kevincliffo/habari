//import 'dart:io';
//import 'dart:async';
import 'package:flutter/material.dart';
//import 'package:getflutter/getflutter.dart';
//import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';


class ListNewsCard extends StatelessWidget {
  final String title;
  final String content;
  final String source;
  final String link;
  final String image_name;
  
  final FlutterWebviewPlugin webView = new FlutterWebviewPlugin();

  ListNewsCard(
      {this.title, this.content, this.source, this.link, this.image_name});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
        child: Card(
          child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 7.0, bottom: 14.0),
                    child: Text("$title",
                        style: TextStyle(
                            fontSize: 20.0,
                            fontFamily: "Playfair Display",
                            fontWeight: FontWeight.w700)),
                  ),
                  Container(
                    height: 170.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/" + image_name),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.horizontal(),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Daily Nation",
                          style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey)),
                      GestureDetector(
                        onTap: () {},
                        child: Text("Health",
                            style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey)),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                      "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem"),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SizedBox(
                        width: 0.0,
                      ),
                      OutlineButton(
                        onPressed: () {
                          webView.launch("$link", hidden: false).then((data) {
                            print("Webview launch");
                          });
                        },
                        child:
                          Text("Read More", style: TextStyle(fontSize: 16.0)),
                      ),
                      //icon:Icons.location_on,
                      Icon(
                        Icons.share,
                      ),
                    ],
                  ),
                ],
              )),
        ),
      );
  }

  // Future<bool> _exitApp(BuildContext context) async {
  //   if (await webView.canGoBack()) {
  //     print("onwill goback");
  //     webView.goBack();
  //     return Future.value(true);
  //   } else {
  //     Scaffold.of(context).showSnackBar(
  //       const SnackBar(content: Text("No back history item")),
  //     );
  //     return Future.value(false);
  //   }
  // }
  // _launchURL(String url) async {
  //   //const url = 'https://flutter.io';
  //   if (await canLaunch(url)) {
  //     await launch(url);
  //   } else {
  //     throw 'Could not launch $url';
  //   }
  // }
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
