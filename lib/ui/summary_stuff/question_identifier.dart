import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier({
    super.key,
    required this.isCorrect,
    required this.questionIndex,
  });

  final bool isCorrect;
  final int questionIndex;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: isCorrect
            ? const Color.fromARGB(255, 87, 255, 233)
            : const Color.fromARGB(255, 255, 76, 186),
        borderRadius: BorderRadius.circular(200),
      ),
      child: Center(
        child: Text(
          style: const TextStyle(
            color: Color.fromARGB(255, 82, 0, 165),
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          (questionIndex + 1).toString(),
        ),
      ),
    );
  }
}
