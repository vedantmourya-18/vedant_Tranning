import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'homescreen.dart';


class Intro extends StatefulWidget {
  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  final name = TextEditingController();
  final mail = TextEditingController();
  @override
  void dispose() {
    name.dispose();
    mail.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent[200],
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children : <Widget>[
              CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('images/enli.jpg'),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 300,
                child: Card(
                  child: Column(
                      children: <Widget>[
                        Text('name'),
                        TextField(
                          controller: name,
                        ),
                      ]
                  ),
                ),
              ),
              Container(
                width: 300,
                child: Card(
                  child: Column(
                      children: <Widget>[
                        Text("mail id"),
                        TextField(
                          controller: mail,
                        ),
                      ]
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              RaisedButton(
                onPressed: () {
                  return showDialog(
                      context: context,
                      builder: (context)
                      {
                        return AlertDialog(
                            content:(
                                Column(
                              children: <Widget>[
                                Text(name.text),
                                Text(mail.text),
                                RaisedButton(
                                  child: Text('Next'),
                                  onPressed: () {
                                   Navigator.push(context,MaterialPageRoute(builder:(context){
                                     return Homescreen();
                                   }));
                                  }
                                )
                              ],
                            )
                            )
                        );
                      }
                  );
                },
                child: Text( 'Submit'),
              )
            ]
        ),
      ),
    );
  }
}
