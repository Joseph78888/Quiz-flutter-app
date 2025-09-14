// Import the material design package from Flutter.
import 'package:flutter/material.dart';

// A custom button widget for displaying an answer option.
class AnswerButton extends StatelessWidget {
  // The constructor for the AnswerButton.
  // It requires the answer text and a function to be called on tap.
  const AnswerButton(this.answerText, this.onTap, {super.key});

  // The text to be displayed on the button.
  final String answerText;
  // The function to be executed when the button is tapped.
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    // The ElevatedButton widget is used to create a styled button.
    return ElevatedButton(
      onPressed: onTap,
      // The style property is used to customize the button's appearance.
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 60),
        backgroundColor: const Color.fromARGB(255, 17, 0, 112),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      // The child of the button is a Text widget displaying the answer text.
      child: Text(answerText, textAlign: TextAlign.center),
    );
  }
}

