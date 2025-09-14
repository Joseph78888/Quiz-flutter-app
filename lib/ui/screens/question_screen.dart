// Import necessary packages for Flutter UI, Google Fonts, and custom widgets/data.
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizz_app/ui/answer_button.dart';
import 'package:quizz_app/data/questions.dart';

// This widget displays the quiz questions and answer options.
class QuestionScreen extends StatefulWidget {
  // The constructor requires a function to be called when an answer is selected.
  const QuestionScreen({super.key, required this.onSelectAnswer});

  // A callback function that is called with the selected answer.
  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

// The state for the QuestionScreen widget.
class _QuestionScreenState extends State<QuestionScreen> {
  // Index to keep track of the current question being displayed.
  var curentQuestionIndex = 0;

  // This function is called when an answer button is tapped.
  void answerQuestion(String selectedAnswer) {
    // Call the callback function provided by the parent widget.
    widget.onSelectAnswer(selectedAnswer);
    // Increment the question index to move to the next question.
    setState(() {
      curentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Get the current question from the questions list.
    final curentQuestion = questions[curentQuestionIndex];
    // A SizedBox to ensure the content takes up the full width of the screen.
    return SizedBox(
      width: double.infinity,
      // A Container to add some margin around the content.
      child: Container(
        margin: const EdgeInsets.all(40),
        // A Column to arrange the question and answers vertically.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Display the question text with custom styling.
            Text(
              curentQuestion.question,
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 232, 207, 255),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            // Use the spread operator to add the answer buttons to the list of children.
            // The answers are shuffled before being displayed.
            ...curentQuestion.getShuffledAnswer().map((answer) {
              return AnswerButton(answer, () {
                answerQuestion(answer);
              });
            }),
          ],
        ),
      ),
    );
  }
}

