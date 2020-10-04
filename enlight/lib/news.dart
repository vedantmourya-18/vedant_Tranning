import 'dart:convert';
import 'Articles.dart';
import 'package:http/http.dart' as http;

class News{
  List<Articlesdata> news =[];

  Future<void> getNews() async
  {

  String url = "https://newsapi.org/v2/top-headlines?country=in&apiKey=6212a811cb1c48edb0e7c1b86927dfed";

  var response = await http.get(url);

  var jsonData = jsonDecode(response.body);

  if(jsonData['status'] == "ok"){
    jsonData["articles"].forEach((element){
      if(element["urlToImage"] != null && element['description'] != null){


        Articlesdata articlesdata = Articlesdata(
          title: element['title'],
          author: element["author" ],
          description: element['description'],
          url: element["url"],
          urlToImage: element['urlToImage'],
          content: element['content'],
        );
        news.add(articlesdata);
      }
    });
  }
  }

}