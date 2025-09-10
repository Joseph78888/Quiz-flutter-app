import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatefulWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(219, 223, 215, 255),
          ),
          const SizedBox(height: 50),
          Text(
            'Learn Flutter the Fun Way!',
            style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 229, 207, 255),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: widget.startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 255, 255, 255),
              textStyle: TextStyle(fontSize: 18),
            ),
            icon: Icon(Icons.arrow_back_ios),
            label: Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
