import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
      Imageholder(),
    );
  }
}

class Imageholder extends StatefulWidget {

  @override
  _ImageholderState createState() => _ImageholderState();
}

class _ImageholderState extends State<Imageholder> {
  String imageUrl;

  void getImage() async{
     var res =await http.get("https://api.unsplash.com/photos/random?&client_id=tafDheTJcYA6diJen2QylnMkD4orDG7VlMG8UBgLd1o");
     if(res.statusCode==200){
      var data = jsonDecode(res.body);
     setState(() {
       imageUrl= data["urls"]["small"];
     });
    }
  }
  @override
  void initState(){
    getImage();
  super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.grey,
      title: Text('Images',
      textAlign: TextAlign.center,),
    ),
      body: 
      Center(
        child: Column(
          children: <Widget>[
            TextFormField(),
            Expanded(
               flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image(
                  image: NetworkImage(imageUrl ?? "https://images.unsplash.com/photo-1601219992101-9c6430278e68?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjE2OTgxMX0 "),
                ),
              ),
            ),
             RaisedButton(
               child: Text('Next Image'),
              onPressed: (){
                getImage();
                },
            ),
          ],
        ),
      ),
    );
  }
}

