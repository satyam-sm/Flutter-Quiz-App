// used in result_questions_summary.dart
//
import 'package:flutter/material.dart';
import 'package:quizapp/question_summary/question_number.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.summaryData, {super.key});

  final Map<String, Object> summaryData;

  @override
  Widget build(BuildContext context) {
    final bool isCorrectAns =
        summaryData['User_answer'] == summaryData['Correct_answer'];

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionNumber(
              questionIndex: summaryData['Question_index'] as int,
              isCorrectAns: isCorrectAns),
          const SizedBox(
            width: 18,
          ),
          Expanded(
            // expanded sets maximum size (width , height) of child widget equal to parent widget here Row
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                (summaryData['Question']).toString(),
                // style: GoogleFonts.lato(
                //   color: Colors.white,
                //   fontSize: 18,
                //   fontWeight: FontWeight.w900,
                // ),
                style: const TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    height: 1.2),
              ),
              const SizedBox(
                height: 3,
              ),
              Text(summaryData['User_answer'] as String,
                  style: const TextStyle(
                    height: 1,
                    color: Color.fromARGB(255, 255, 246, 192),
                  )),
              Text('Correct - ${summaryData['Correct_answer'] as String}',
                  style: const TextStyle(
                    height: 0,
                    color: Color.fromARGB(255, 211, 255, 196),
                  )),
            ]),
          ),
        ],
      ),
    );
  }
}
