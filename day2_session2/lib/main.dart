import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey,
        body:
        SafeArea(
          child:
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage('images/offroad31.jpg'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Leave the Roads ;\n"
                        "\t take the trails",
                        style:TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontFamily: 'Lobster',
                        ),
                  ),
                  SizedBox(
                    height: 20,
                    child:
                      Divider(
                        color: Colors.black,
                        height: 20,
                      ),
                      width:200,
                  ),

                  SizedBox(
                    width: 300,
                    child: Card(
                      child:Padding(
                        padding: const EdgeInsets.all(10),
                        child: ListTile(
                          leading: Icon(Icons.call),
                          title: Text(
                            "phone number",
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Grandstander',
                              color: Colors.grey,
                            ),
                          ),
                        )
                      )
                    ),
                  ),
                  SizedBox(
                    width: 300,
                    child: Card(
                        child:Padding(
                            padding: const EdgeInsets.all(10),
                            child: ListTile(
                              leading: Icon(Icons.mail),
                              title: Text(
                                "Gmail",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Grandstander',
                                  color: Colors.grey,
                                ),
                              ),
                            )
                        )
                    ),
                  )
                ]
              ),
            )
        )
      )
    );
  }
}
