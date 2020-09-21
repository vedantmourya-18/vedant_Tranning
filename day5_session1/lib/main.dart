import 'package:flutter/material.dart';
import 'questionBank.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

Quiz quiz = Quiz();
int correct = 0;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
          home: Scaffold(
            backgroundColor: Colors.grey.shade600,
            body:SafeArea(
              child: QuizPage(),
            ),
          ),
    );
  }
}


class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {

  List<Icon> scoreKeeper = [

  ];

  void checkAnswer(bool userPickedAnswer){
    bool correctAnswer = quiz.getCorrectAnswer();
setState(() {
  if (userPickedAnswer == correctAnswer) {
    scoreKeeper.add(Icon(Icons.check, color: Colors.green,));
    correct++;
  }
  else {
    scoreKeeper.add(Icon(Icons.close, color: Colors.red));
  }
  quiz.nextQuestion();
  if (quiz.getLength() == quiz.getBanklength()-1) {
    Alert(
      context: context,
      type: AlertType.error,
      title: "Attempt over",
      desc: "correct is $correct.",
      buttons: [
        DialogButton(
          child: Text(
            "Restart",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () => Navigator.pop(context),
          width: 120,
        )
      ],
    ).show();
    scoreKeeper = [];
    correct=0;
    quiz.rest();
  }
});
}
  @override
  Widget build(BuildContext context) {
    return
       Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                quiz.getQuestionText()
              ,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
              ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: FlatButton(
                textColor: Colors.white,
                color: Colors.green,
                child:
                Text('True'),
                onPressed: (){
                  checkAnswer(true);
                },
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
                Text('False'),
                onPressed: (){
                  checkAnswer(false);
                },
              ),
            ),
          ),
          Row(
            children: scoreKeeper,

          ),
        ],

    );
  }
}
