import 'dart:convert';
import 'package:habari/src/models/news_model.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:http/http.dart' as http;

class NewsModel extends Model{
  List<News> _newss = [];
  bool _isLoading = false;

  bool get isloading{
    return _isLoading;
  }

  List<News> get newss{
    return List.from(_newss);
  }

  Future<bool> addNews(News news) async{
    _isLoading = true;
    notifyListeners();
    try{
      final Map<String, dynamic> newsData = {
        "title": news.name,
        "category": news.category,
        "description": news.description,
        "price": news.price,
        "discount": news.discount,
      };
      final http.Response response = await http.post("https://news-app-c70f0.firebaseio.com/newss.json",body: json.encode(newsData));
      final Map<String, dynamic> responseData = json.decode(response.body);
      
      News newsWithID = News(
        id: responseData["name"],
        name: news.name,
        category: news.category,
        description: news.description,
        price: news.price,
        discount: news.discount
      );

      _newss.add(newsWithID);
      _isLoading = false;
      notifyListeners();
      //fetchNewss();
      return Future.value(true);
    }
    catch(e){
      _isLoading = false;
      notifyListeners();
      print("Connection error : $e");
      return Future.value(false);
    }
  }

  Future<bool> fetchNewss() async{
    _isLoading = true;
    notifyListeners();
    try{
      final http.Response response = await http.get("https://news-app-c70f0.firebaseio.com/newss.json");

      final Map<String, dynamic> fetchedData = json.decode(response.body);
      final List<News> newsItems = [];
      
      fetchedData.forEach((String id, dynamic newsData){
        News newsItem = News(
          id: id,
          category: newsData["category"],
          description: newsData["description"],
          price: newsData["price"],
          discount: newsData["discount"],
          name: newsData["title"],
        );
        newsItems.add(newsItem);
      });
      _newss = newsItems;
      _isLoading = false;
      notifyListeners();
      return Future.value(true);
    }
    catch(e){
      _isLoading = false;
      notifyListeners();
      return Future.value(false);
    }
  }
}