// Import necessary packages for Flutter UI, data, and different screens.
import 'package:flutter/material.dart';
import 'package:quizz_app/data/questions.dart';
import 'package:quizz_app/ui/screens/question_screen.dart';
import 'package:quizz_app/ui/screens/resulte_screen.dart';
import 'package:quizz_app/ui/screens/start_screen.dart';

// The Quiz widget is a StatefulWidget because it manages the state of the active screen.
class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

// The state for the Quiz widget.
class _QuizState extends State<Quiz> {
  // A variable to keep track of the currently active screen.
  // It defaults to 'start-screen' to show the start screen when the app loads.
  var activeScreen = 'start-screen';
  // A list to store the answers selected by the user.
  List<String> selectAnswers = [];

  // This function is called when a user selects an answer.
  // It adds the answer to the list and checks if the quiz is complete.
  void chooseAnswer(String answer) {
    selectAnswers.add(answer);

    // If the number of selected answers equals the total number of questions,
    // switch to the results screen.
    if (selectAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }

  // This function switches the screen from the start screen to the question screen.
  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    // Initialize the screenWidget with the StartScreen.
    Widget screenWidget = StartScreen(switchScreen);

    // Conditionally set the screenWidget based on the value of activeScreen.
    if (activeScreen == 'question-screen') {
      screenWidget = QuestionScreen(onSelectAnswer: chooseAnswer);
    }

    if (activeScreen == 'results-screen') {
      screenWidget = ResulteScreen(
        choosenAnswer: selectAnswers,
        repeatQuiz: switchScreen,
      );
      selectAnswers = [];
    }

    // The MaterialApp widget is the root of the app's UI.
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // The body of the scaffold is a Container with a gradient background.
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 145, 46, 232),
                const Color.fromARGB(255, 101, 38, 212),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          // The child of the container is the currently active screen widget.
          child: screenWidget,
        ),
      ),
    );
  }
}
