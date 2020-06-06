import 'package:flutter/material.dart';
//import 'package:habari/src/widgets/home_top_info.dart';
import 'package:habari/src/widgets/search_field.dart';
//import 'package:habari/src/widgets/news_card.dart';
import 'package:habari/src/widgets/list_news_card.dart';
//import 'package:habari/src/models/news_model.dart';
//import 'package:scoped_model/scoped_model.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  // List<Food> _foods = foods;

  @override
  void initState() {
    //widget.foodModel.fetchFoods();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body:ListView(
        padding: EdgeInsets.only(left:20.0, right:20.0),
        children: <Widget>[
          //HomePageTopInfo(),
          //Foodcategory(),
          //SizedBox(height:10.0),
          SearchField(),
          SizedBox(height:10.0),
          //NewsCard(title:"Corona", image_name: "corona.jpg"),
          ListNewsCard(title:"Corona", content:"Corona issue getting out of hand", source:"Washington Post", link:"https://cogitas.net/overlay-text-icon-image-flutter/", image_name: "corona.jpg"),
          SizedBox(height:10.0),
          ListNewsCard(title:"George Floyd", content:"Corona issue getting out of hand", source:"Washington Post", link:"http://www.washingtonpost.com/news/1/corona", image_name: "george_floyd.jpg"),
          SizedBox(height:10.0),
          ListNewsCard(title:"German Minister", content:"German Minister visits Israel", source:"Washington Post", link:"http://www.washingtonpost.com/news/1/corona", image_name: "german_minister.jpg"),
          // NewsCard(title:"German Minister", image_name: "german_minister.jpg"),
          // SizedBox(height:10.0),
          // NewsCard(title:"Stock Market", image_name: "stock_market.png"),
          // SizedBox(height:10.0),
          // NewsCard(title:"Venture Capitalists", image_name: "venture_capitalists.jpg"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              // Text("Frequently bought foods",
              //   style:TextStyle(
              //     fontSize:18.0,
              //     fontWeight: FontWeight.bold,
              //   )
              // ),
              // GestureDetector(
              //   onTap: (){
              //   },
              //   child: Text("View All",
              //     style:TextStyle(
              //       fontSize:18.0,
              //       fontWeight: FontWeight.bold,
              //       color: Colors.orangeAccent
              //     )
              //   ),
              // ),
            ],
          ),
          SizedBox(height:20.0),
          // ScopedModelDescendant<MainModel>(
          //   builder: (BuildContext context, Widget child, MainModel model){
          //     return Column(
          //       children: model.foods.map(_buildFoodItems).toList(),            
          //     );
          //   },
          // ),          
        ],
      ),
    );
  }

  // Widget _buildNewsItems(News news){
  //   return Container(
  //     margin: EdgeInsets.only(bottom:20.0),
  //     child:BoughtFoods(
  //       id:food.id,
  //       name: food.name,
  //       imagePath: "assets/images/lunch.jpeg",//food.imagePath,
  //       category: food.category,
  //       price: food.price,
  //       discount: food.discount,
  //       ratings: food.ratings,
  //     ),
  //   );
  // }
}