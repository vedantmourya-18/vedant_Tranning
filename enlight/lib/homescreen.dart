import 'package:enlight/Articles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'news.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Homescreen extends StatefulWidget {
  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {

  List<Articlesdata> articles = new List<Articlesdata>();
  bool _loading = true;
  @override
  void initState() {
    super.initState();
    getNews();
  }
  getNews() async{
     News newsClass = News();
     await newsClass.getNews();
     articles = newsClass.news;
     _loading = false;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: <Widget>[

            Text("Ne",textAlign: TextAlign.center,),
            Text("ws",style: TextStyle(
              color: Colors.amberAccent
            ),
            )
          ],
        ),
      ),
      body: _loading ?
          Center(
            child: Container(
              child: SpinKitWave(
                color: Colors.amberAccent,
                size: 50,
              )
            ),
          ) : Container(
        child: ListView.builder(
          itemCount: articles.length,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index){
              return NewsTile(
                imageUrl: articles[index].urlToImage,
                title: articles[index].title,
                description: articles[index].description,
              );
            } ),
      ),
    );
  }
}

class NewsTile extends StatelessWidget {

  final String imageUrl , title, description;
  NewsTile({@required this.imageUrl,@required this.title,@required this.description,});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Image.network(imageUrl),
          Text(title),
          Text(description)
        ],
      )
    );
  }
}

