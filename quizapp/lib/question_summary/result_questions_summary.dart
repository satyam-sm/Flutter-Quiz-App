// designs scrollable frame of result screen 
// used in result_screen , summarydata input is given in result_screen.dart file

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quizapp/question_summary/summary_item.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summarydata, {super.key});

  final List<Map<String, Object>> summarydata;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: SingleChildScrollView(
        child: Column(
          children: summarydata.map(
            (data) {
              return SummaryItem(data);
            },
          ).toList(),
        ),
      ),
    );
  }
}
//.map() is used to transform data of one type to data of some other type