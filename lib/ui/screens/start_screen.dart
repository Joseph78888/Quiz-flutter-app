// Import necessary packages for Flutter UI and Google Fonts.
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// This widget is the start screen of the quiz app.
class StartScreen extends StatelessWidget {
  // The constructor requires a function to be called to start the quiz.
  const StartScreen(this.startQuiz, {super.key});

  // A callback function that is called when the 'Start Quiz' button is pressed.
  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    // The Center widget centers its child within itself.
    return Center(
      // A Column to arrange the widgets vertically.
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Display the quiz logo image.
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            // Apply a color filter to the image.
            color: const Color.fromARGB(219, 223, 215, 255),
          ),
          const SizedBox(height: 50),
          // Display the title text with custom styling.
          Text(
            'Learn Flutter the Fun Way!',
            style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 229, 207, 255),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 30),
          // An OutlinedButton with an icon to start the quiz.
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 255, 255, 255),
              textStyle: const TextStyle(fontSize: 18),
            ),
            icon: const Icon(Icons.arrow_forward),
            label: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}

