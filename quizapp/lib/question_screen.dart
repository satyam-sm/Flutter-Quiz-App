//manages Questions page
//onSelectAns gets the function choose and defined in Quiz dart which saves selected option in list
import 'package:flutter/material.dart';
import 'package:quizapp/answer_button.dart';
import 'package:quizapp/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({
    super.key,
    required this.onSelectAnswer, // used to pass chooseAns function of quiz.dart to this file
  });

  final void Function(String answer)
      onSelectAnswer; // choseAns function of Quiz.dart can be accessed using onSelectAnswer function

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentIndex = 0;

  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(
        selectedAnswer); //widget. is used to access function available in parent class (above class)
    setState(() {
      currentIndex++; // responsible for changing question on selecting a option
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentIndex]; // finds the question data to display according to currnt index which varies
    var question = '${currentIndex + 1}. ${currentQuestion.text}';
    return SizedBox(
      width: double.infinity, // take all available width
      child: Container(
        margin: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          // column have main axis vertical
          mainAxisAlignment:
              MainAxisAlignment.center, // make content virtically at center
          children: [
            Text(question,
                style: GoogleFonts.tiltWarp(
                  color: const Color.fromARGB(255, 254, 255, 219),
                  fontSize: 25,
                )),
            const SizedBox(
              height: 15,
            ),
            ...currentQuestion.getShuffledAnswers().map((answer) {
              //flutter automatically sends each item , one at a time
              // ( ... ) will cause spread , put list items ouside inner nested list
              return AnswerButton(
                answertext: answer,
                onTap: () {
                  answerQuestion(answer);
                }, //onTap wants a void function which doesnt have any argument so we create a anonymous function and inside it we put answerQuestion function which require an argument
              );
            }),
          ],
        ),
      ),
    );
  }
}
