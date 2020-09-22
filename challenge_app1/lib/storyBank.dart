import 'story.dart';
int _storyNumber =0;
class Stories
{
List<Story>_storyData = [
  Story(//0
    storytitle:
      'You are a 31st century space explorer and captain of the space craft ,you comes across an unknown planet.your ship is tough enough to land on any surface ,What you will do? ',
      option1: 'study it from above and continue journey ',
      option2: 'try to land on its surface'
  ),
  Story(//1
    storytitle:
    'as you land you comes across a dome like structure big enough to cover a entire city,out of curiosity you want to go inside it.What you decide',
    option1: 'leave the safety of craft,and go by yourself',
    option2: 'or send the drones to check'
  ),
  Story(//2
    storytitle:
      'as the drone goes inside you lose connection with them,but you are curious to know whats inside it ,what you will do',
    option1: 'wait for the connection to establish',
    option2: 'go and check by your self',
  ),
  Story(//3
    storytitle:
    'you have waited for a long period and nothing happened,What you will do?',
    option1: 'leave the planet and continue your journey',
    option2: 'you decides to go inside'
  ),
  Story(//4
    storytitle: 'as you go inside you finds a creature\'s head just like humans,but way more larger,also you finds that a thunder storm is approaching.what you will do?',
    option1: 'leave the head and continue ahead',
    option2: 'take the head , come back to the ship to read its anatomy',
  ),
  Story(//5
    storytitle: 'while returning you were struck by the storm, and all the crew members including you died',
    option1: 'restart',
    option2: '',
  ),
  Story(//6
    storytitle: 'you are lucky as if you have decided to leave because if you haven\'t ,you would have never returned',
    option1: 'restart',
    option2:'',
  ),
  Story(//7
    storytitle: 'as you continue your way inside the dome ,you comes across a capsule having a full intact body of the creature you have just encountered,but its to big to bring it back to the craft'
    'what you will do',
     option1: 'try to open it',
    option2: 'try to find what are they'
  ),
  Story(//8
    storytitle: ' the creature wakes up and kills you',
 option1: 'restart',
option2: '',
),
  Story(//9
  storytitle: 'as you tries to find there origin you comes across a tablet,with something engraved on it, luckly humans have evolved there technology so much by travelling to different planets that they can now translate any written language.the tablet say\s \" your job is to destroy your creation \" with a image of humans in them' ,
option1: 'restart',
 option2:    '',
  )
];
String getStory(){
  return _storyData[_storyNumber].storytitle;
}
String getChoice1(){
  return _storyData[_storyNumber].option1;
}
String getChoice2(){
  return _storyData[_storyNumber].option2;
}
void nextStory(int choiceNumber) {
  if (choiceNumber == 1 && _storyNumber == 0) {
    _storyNumber = 6;
  }
  else if (choiceNumber == 2 && _storyNumber == 0) {
    _storyNumber = 1;
  }
  else if (choiceNumber == 1 && _storyNumber == 1) {
    _storyNumber = 4;
  }
  else if (choiceNumber == 2 && _storyNumber == 1) {
    _storyNumber = 3;
  }
  else if (choiceNumber == 1 && _storyNumber == 4) {
    _storyNumber = 7;
  }
  else if (choiceNumber == 2 && _storyNumber == 4) {
    _storyNumber = 5;
  }
  else if (choiceNumber == 1 && _storyNumber == 3) {
    _storyNumber = 6;
  }
  else if (choiceNumber == 2 && _storyNumber == 3) {
    _storyNumber = 4;
  }
  else if (choiceNumber == 1 && _storyNumber == 7) {
    _storyNumber = 8;
  }
  else if (choiceNumber == 2 && _storyNumber == 7) {
    _storyNumber = 9;
  }

  else if (choiceNumber == 1 && _storyNumber == 6 || _storyNumber == 5 || _storyNumber ==8 || _storyNumber == 9) {
    _storyNumber = 0;
  }
}
  bool buttonvisible(){
if(_storyNumber==6 || _storyNumber==5){
  return false;
}
else {
  return true;
}
}

}