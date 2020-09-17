import 'dart:core';

import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.redAccent[200],
        appBar: AppBar(
          title: Center(child: Text('Dices')),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      )
    );
  }
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int left=1, right=1,leftup=1,rightup=1;
  void fun() {
    setState(() {
      left = Random().nextInt(6) + 1;
      right = Random().nextInt(6) + 1;
      leftup = Random().nextInt(6) + 1;
      rightup = Random().nextInt(6) + 1;
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    return
          Column(
            children: [
              Center(
                child: Row(
                    children: [
                      Expanded(
                        child:
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child:
                          FlatButton(
                            onPressed: (){
                             fun();
                             },
                            child:
                            Image.asset('images/dice$left.png'),

                          ),
                        ),
                      ),
                      Expanded(
                          child:
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child:
                            FlatButton(
                                onPressed: (){
                                 fun();
                                 },
                                child:
                                Image.asset('images/dice$right.png')),
                          )
                      ),
                    ]
                ),
              ),
              Center(
                child: Row(
                    children: [
                      Expanded(
                        child:
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child:
                          FlatButton(
                            onPressed: (){
                              fun();
                            },
                            child:
                            Image.asset('images/dice$leftup.png'),

                          ),
                        ),
                      ),
                      Expanded(
                          child:
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child:
                            FlatButton(
                                onPressed: (){
                                  fun();
                                },
                                child:
                                Image.asset('images/dice$rightup.png')),
                          )
                      ),
                    ]
                ),
              ),
            ],
        );
      }
    }

