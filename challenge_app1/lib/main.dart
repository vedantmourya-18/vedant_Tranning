import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'storyBank.dart';
import 'package:assets_audio_player/assets_audio_player.dart';


Stories stories = Stories();
void main() {
  runApp(MyApp());
}
void play()
{
  AssetsAudioPlayer.newPlayer().open(
      Audio("y2mate.com - Interstellar Main Theme - Extra Extended - Soundtrack by  Hans Zimmer_UDVtMYqUAyw.mp3"),
       autoStart: true);
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     home: Scaffold(
       body: Container(
            width: 400,
           height: 900,
           decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/Space.jpg'),
              fit: BoxFit.cover,
            ),
           ),

           child:
               Story(),
         ),
       ),
    );
  }
}

class Story extends StatefulWidget {
  @override
  _StoryState createState() => _StoryState();
}

class _StoryState extends State<Story> {
  @override
  Widget build(BuildContext context) {
    return
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex:  5,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:  Text(
                    stories.getStory(),
                    style: TextStyle(
                    fontFamily: 'Grandstander',
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: FlatButton(
                  textColor: Colors.white,
                  color: Colors.red,
                  child:
                  Text(stories.getChoice1()),
                  onPressed: (
                      ){
                    play();
                    setState(() {
                      stories.nextStory(1);
                    });
                  },
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Visibility(
                  visible: stories.buttonvisible(),
                  child: FlatButton(
                    textColor: Colors.white,
                    color: Colors.green,
                    child:
                    Text(stories.getChoice2()),
                    onPressed: (){
                     setState(() {
                       stories.nextStory(2);
                     });
                    },
                  ),
                ),
              ),
            ),
          ],
    ),
      );
  }
}

