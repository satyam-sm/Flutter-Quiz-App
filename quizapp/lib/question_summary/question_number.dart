// Designs the numbering with its color in result screen
// used in summary item 
import 'package:flutter/material.dart';

class QuestionNumber extends StatelessWidget {
  const QuestionNumber(
      {super.key, required this.questionIndex, required this.isCorrectAns});

  final int questionIndex;
  final bool isCorrectAns;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 35,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: isCorrectAns
              ? const Color.fromARGB(255, 0, 151, 5)
              : const Color.fromARGB(255, 187, 0, 0),
          borderRadius: BorderRadius.circular(100)),
      child: Text(
        (questionIndex + 1).toString(),
        style: const TextStyle(
            color: Color.fromARGB(255, 255, 248, 236),
            fontSize: 18,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
