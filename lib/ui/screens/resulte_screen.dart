// Import necessary packages for Flutter UI, data, and custom widgets.
import 'package:flutter/material.dart';
import 'package:quizz_app/data/questions.dart';
import 'package:quizz_app/ui/question_summary.dart';

// This widget displays the results of the quiz.
class ResulteScreen extends StatelessWidget {
  // The constructor requires a list of the user's chosen answers.
  const ResulteScreen({super.key, required this.choosenAnswer});

  // A list of the answers selected by the user.
  final List<String> choosenAnswer;

  // This method generates a summary of the quiz data.
  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    // Loop through the chosen answers to create the summary.
    for (var i = 0; i < choosenAnswer.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].question,
        'correct_answer': questions[i].answers[0], // The first answer is always correct.
        'user_answer': choosenAnswer[i],
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    // Generate the summary data.
    final summaryData = getSummaryData();
    // Get the total number of questions.
    final numOfTotalQuestons = questions.length;
    // Calculate the number of correct questions.
    final numOfCorrectQuestions = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;

    // A SizedBox to ensure the content takes up the full width of the screen.
    return SizedBox(
      width: double.infinity,
      // A Container to add some margin around the content.
      child: Container(
        margin: const EdgeInsets.all(40),
        // A Column to arrange the content vertically.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Display the results summary text.
            Text(
              'You answered $numOfCorrectQuestions out of $numOfTotalQuestons questions correctly!',
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            // Display the detailed question summary.
            QuestionSummary(summaryData),
            const SizedBox(height: 30),
            // A button to allow the user to repeat the quiz.
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.replay_rounded),
              label: const Text('Repeat Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}

