// ignore_for_file: deprecated_member_use
//onpressed is to be used instead of raisedbutton always remember this 
//widget is a standalone unit 
import 'package:flutter/material.dart';

void main() => runApp( MyApp());

// ignore: must_be_immutable
//this widget can be rebuild 
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }


}
//State is a generic state 
//this data is never reset 
class _MyAppState extends State<MyApp>{
  
  var _questionIndex=0;
  void _answerQuestion(){
    setState(() {
      _questionIndex=_questionIndex+1;
    });
    
    print(_questionIndex);
  }
  @override
  Widget build(BuildContext context) {
    var questions = [
      'what\'s your fav color?',
      'what\'s your fav animal?',
      'what\'s your fav singer?',
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('My first App'),
          ),
          body: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
               Text(questions[_questionIndex]),
               ElevatedButton(
                onPressed: () => print('Answer 1 is chosen!!!'),
                child:  Text('Answer 1'),
              ),
               ElevatedButton(
                onPressed: _answerQuestion,   //here we are passing answerquestion pointer to the elevatedbutton because when we write answerQuestion() that will be our function and it's type is void so we don't want that thing so we pass a pointer 
                //name is passed instead of result 
                child:  Text('Answer 2'),
              ),
               ElevatedButton(onPressed: _answerQuestion, child: Text('Answer 3'),
              )
            ],
          )),
    );
  }
}
