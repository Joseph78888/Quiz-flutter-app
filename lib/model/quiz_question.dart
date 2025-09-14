// This class defines the structure of a quiz question.
class QuizQuestion {
  // The constructor for the QuizQuestion class.
  // It takes a question string and a list of answers.
  const QuizQuestion(this.question, this.answers);

  // The question text.
  final String question;
  // A list of answers for the question. The first answer is always the correct one.
  final List<String> answers;

  // This method shuffles the answers and returns a new list.
  // This is to ensure that the order of answers is random each time a question is displayed.
  List<String> getShuffledAnswer() {
    // Create a copy of the answers list to avoid modifying the original list.
    final shuffledList = List.of(answers);
    // Shuffle the new list in place.
    shuffledList.shuffle();
    // Return the shuffled list.
    return shuffledList;
  }
}
