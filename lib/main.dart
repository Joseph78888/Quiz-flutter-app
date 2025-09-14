// Import the essential material design package from Flutter.
import 'package:flutter/material.dart';
// Import the main Quiz widget, which serves as the root of the application.
import 'package:quizz_app/quiz.dart';

// The main function is the entry point for the Dart application.
void main() {
  // The runApp function inflates the given widget and attaches it to the screen.
  // Here, we are running the Quiz widget, which contains the entire application logic.
  runApp(const Quiz());
}

