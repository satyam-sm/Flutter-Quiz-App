import 'package:flutter/material.dart';
import 'package:quizapp/data/questions.dart';
import 'package:quizapp/question_summary/result_questions_summary.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
    this.selectedAns,
    this.onRestart, {
    super.key,
  });

  final List<String> selectedAns;
  final void Function() onRestart;
  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < selectedAns.length; i++) {
      summary.add({
        'Question_index': i,
        'Question': questions[i].text,
        'Correct_answer': questions[i].answers[0],
        'User_answer': selectedAns[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data['User_answer'] == data['Correct_answer'];
    }).length;

    return SizedBox(
      width: double.infinity, // take all available width
      child: Container(
        margin: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You Answered $numCorrectQuestions out of $numTotalQuestions Questions Correctly !',
              textAlign: TextAlign.center,
              style: GoogleFonts.tiltWarp(
                color: const Color.fromARGB(255, 254, 255, 219),
                fontSize: 22,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            QuestionSummary(
                getSummaryData()), // to build question summary part of screen
            const SizedBox(
              height: 40,
            ),
            ElevatedButton.icon(
              onPressed: onRestart,
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                  padding: const EdgeInsets.all(16), // Add padding
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(17),
                  )),
              icon: const Icon(
                Icons.restart_alt,
                color: Colors.white,
              ),
              label: const Text(
                'Restart Quiz',
                style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
