import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
    home: Scaffold(
      appBar: AppBar(
          title: Text('vedant'),
        backgroundColor: Colors.orange ,
      ),
      body: Center(
          child:
          Image(image:
                  AssetImage('images/vedant.jpg')
          )
      ),
      backgroundColor: Colors.blueGrey,
    )
  ));
}