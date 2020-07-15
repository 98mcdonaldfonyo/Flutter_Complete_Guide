//import 'dart:html';

import 'package:flutter/material.dart'; //MyApp class inherits objects and data from this package file

import "./question.dart";

/*void main() {
  runApp(MyApp());
}*/

//The main method can be written as :
void main() =>
    runApp(MyApp()); //Dart made it for single line expressions methods

//material.dart class has a class that we can extend(statelesswidget,allows us to create our own widgets)
// ignore: must_be_immutable
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}
//On Pressed Widget takes only function sos...

class _MyAppState extends State<MyApp> {
  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
  }

  var _questionIndex = 0;
  //SrtatelessWiget forces us to override eitherway but we do it anyway
  @override //provided by dart and it's a decorator
  //Using Scaffold allows us to create the base widget
  Widget build(BuildContext context) {
    var questions = ['What\'s your name?', 'What\'s your Order?'];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Mc Donald's"),
        ),
        body: Column(
          children: <Widget>[
            Question(questions[_questionIndex]),
            RaisedButton(
              child: Text('Answer1'),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer2'),
              onPressed: () => print('Answer chosen2'),
            ),
            RaisedButton(
              child: Text('Answer3'),
              onPressed: () {
                print('Answer Chosen3');
              },
            ),
          ],
        ),
      ),
    ); //heavy lifter, allows widgets to be compiled to an Actual App{uses named arguments}
  }
}
