// do screen ( widget ) switching as its a parent widget 
// 
import 'package:flutter/material.dart';
import 'package:quizapp/data/questions.dart';
import 'package:quizapp/question_screen.dart';
import 'package:quizapp/result_screen.dart';
import 'package:quizapp/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  // Widget? activeScreen; //not assign activeScreen = StartScreen(switchscreen) here as switchscreen might havent initialized
  // @override
  // void initState() {
  // initState is executed only after every object is created , this ensures that every object is initialized and availabe to use
  //   activeScreen = StartScreen(switchscreen);
  //   super.initState();
  // }

  // void switchscreen() {
  //   setState(() {
  //     activeScreen = const QuestionScreen();
  //   });
  // }

  var activeScreen = 'start-screen';

  List<String> selectedAns = [];
  void chooseAnswer(ans) { // to bring result scrren once all question is answered
    selectedAns.add(ans);

    if (selectedAns.length == questions.length) {
      setState(() {
        activeScreen = 'Result-screen';
      });
    }
  }

  void switchscreen() {
    setState(() {
      activeScreen = 'Question-screen';
    });
  }

  void onRestart() {
    setState(() {
      activeScreen = 'start-screen';
      selectedAns = [];
    });
  }

  @override
  Widget build(context) {
    Widget screenwidget = StartScreen(switchscreen);

    var clr1 = const Color.fromARGB(255, 136, 88, 0);
    var clr2 = const Color.fromARGB(255, 131, 107, 0);

    if (activeScreen == 'Question-screen') {
      screenwidget = QuestionScreen(onSelectAnswer: chooseAnswer);

      clr1 = const Color.fromARGB(255, 189, 123, 0);
      clr2 = const Color.fromARGB(255, 192, 156, 0);
    }
    if (activeScreen == 'Result-screen') {
      screenwidget = ResultScreen(selectedAns, onRestart); //onRestart functions access is given to ResultScreen widget

      clr1 = const Color.fromARGB(255, 189, 123, 0);
      clr2 = const Color.fromARGB(255, 192, 156, 0);
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [clr1, clr2],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight)),
          child: screenwidget, //screenWidget is var defined above which consists of start-screen initally and get changed when req
        ),
      ),
    );
  }
}
