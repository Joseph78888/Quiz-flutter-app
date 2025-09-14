// Import the material design package from Flutter.
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizz_app/ui/summary_stuff/summary_item.dart';

// A widget to display a summary of the quiz questions, user's answers, and correct answers.
class QuestionSummary extends StatelessWidget {
  // The constructor requires a list of summary data.
  const QuestionSummary(this.summaryData, {super.key});

  // The summary data is a list of maps, where each map represents a question's summary.
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    // A SizedBox is used to give the summary a fixed height.
    return SizedBox(
      height: 500,
      // A SingleChildScrollView allows the summary to be scrollable if it exceeds the fixed height.
      child: SingleChildScrollView(
        // A Column widget to display the summary items vertically.
        child: Column(
          // The summaryData is mapped to a list of Row widgets.
          children: summaryData.map(
            (data) {
              return SummaryItem(itemData: data);
            },
          ).toList(), // converting Iterable into list, Creates a [List] containing the elements of this [Iterable] => map.
        ),
      ),
    );
  }
}
