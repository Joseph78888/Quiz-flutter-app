// Import the material design package from Flutter.
import 'package:flutter/material.dart';

// A widget to display a summary of the quiz questions, user's answers, and correct answers.
class QuestionSummary extends StatelessWidget {
  // The constructor requires a list of summary data.
  const QuestionSummary(this.summaryData, {super.key});

  // The summary data is a list of maps, where each map represents a question's summary.
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    // A SizedBox is used to give the summary a fixed height.
    return SizedBox(
      height: 300,
      // A SingleChildScrollView allows the summary to be scrollable if it exceeds the fixed height.
      child: SingleChildScrollView(
        // A Column widget to display the summary items vertically.
        child: Column(
          // The summaryData is mapped to a list of Row widgets.
          children: summaryData.map((data) {
            return Row(
              children: [
                // Display the question number.
                Text(((data['question_index'] as int) + 1).toString()),
                // An Expanded widget to make the column of text take up the remaining horizontal space.
                Expanded(
                  child: Column(
                    children: [
                      // Display the question text.
                      Text(data['question'] as String),
                      const SizedBox(height: 5),
                      // Display the user's answer.
                      Text(data['user_answer'] as String),
                      // Display the correct answer.
                      Text(data['correct_answer'] as String),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}

