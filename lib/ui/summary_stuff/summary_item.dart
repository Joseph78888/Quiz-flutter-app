import 'package:flutter/material.dart';
import 'package:quizz_app/ui/summary_stuff/question_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem({super.key, required this.itemData});

  final Map<String, Object> itemData;
  @override
  Widget build(BuildContext context) {
    final isCorrect = itemData['user_answer'] == itemData['correct_answer'];
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionIdentifier(
            isCorrect: isCorrect,
            questionIndex: itemData['question_index'] as int,
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  itemData['question'] as String,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  itemData['user_answer'] as String,
                  style: const TextStyle(
                    color: Color.fromRGBO(189, 109, 255, 1),
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  itemData['correct_answer'] as String,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 133, 255, 174),
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
