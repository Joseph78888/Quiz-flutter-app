import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizz_app/answer_button.dart';
import 'package:quizz_app/data/questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  var curentQuestionIndex = 0;

  void answerQuestion() {
    setState(() {
      curentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final curentQuestion = questions[curentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          spacing: Checkbox.width,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              curentQuestion.question,
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 232, 207, 255),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            ...curentQuestion.getShuffledAnswer().map((answer) {
              return AnswerButton(
                answer,
                answerQuestion,
              ); // answerQuestion => pinter to the function.
            }),
          ],
        ),
      ),
    );
  }
}
