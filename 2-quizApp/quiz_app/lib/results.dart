import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/questions_list.dart';
import 'package:quiz_app/summary/question_summary.dart';

class Results extends StatelessWidget {
  const Results({
    super.key,
    required this.chosenAnswers,
    required this.onRestart,
  });

  final List<String> chosenAnswers;
  final void Function() onRestart;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'index': i,
        'question': questionsList[i].text,
        'correct_ans': questionsList[i].answers[0],
        'user_ans': chosenAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questionsList.length;
    final numCorrectQuestions = summaryData
        .where((data) => data['user_ans'] == data['correct_ans'])
        .length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answered $numCorrectQuestions out of $numTotalQuestions correctly!',
              style: GoogleFonts.lato(
                color: Colors.purple[100],
                fontWeight: FontWeight.bold,
                fontSize: 18.5,
              ),
            ),
            const SizedBox(height: 30),
            QuestionSummary(summaryData),
            const SizedBox(
              height: 30,
            ),
            TextButton.icon(
              onPressed: onRestart,
              style: TextButton.styleFrom(foregroundColor: Colors.teal[200]),
              icon: const Icon(Icons.refresh),
              label: Text(
                'Restart Quiz',
                style: GoogleFonts.lato(
                  color: Colors.teal[200],
                  fontWeight: FontWeight.bold,
                  fontSize: 18.5,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
