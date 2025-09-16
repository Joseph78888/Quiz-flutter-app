# Quiz App

A simple and interactive quiz application built with Flutter. This app presents a series of questions to the user and provides a summary of their performance at the end.

# Screens
<img width="270" height="600" alt="Screenshot_1757894690" src="https://github.com/user-attachments/assets/582cffc8-6ce4-4842-b21a-4e33ec640938" />  <img width="270" height="600" alt="Screenshot_1757894698" src="https://github.com/user-attachments/assets/d03f4ad4-f08a-4a80-b30c-d1091a0337be" />  <img width="270" height="600" alt="Screenshot_1757894714" src="https://github.com/user-attachments/assets/fc70f4eb-e923-4ab2-a90b-06941aa7deba" />





## Features

- **Start Screen**: A welcoming screen with a button to start the quiz.
- **Question Screen**: Displays questions with shuffled answer options.
- **Results Screen**: Shows the user how many questions they answered correctly and provides a summary of their answers.
- **State Management**: The app effectively manages state to switch between different screens and track user progress.
- **Custom Widgets**: The UI is built with a set of custom widgets for a clean and organized codebase.

## Project Structure

The project is organized into the following directories:

- `lib/`
  - `main.dart`: The entry point of the application.
  - `quiz.dart`: The main widget that manages the state of the app.
  - `data/`: Contains the quiz questions.
    - `questions.dart`: A list of `QuizQuestion` objects.
  - `model/`: Contains the data models for the app.
    - `quiz_question.dart`: The data model for a single quiz question.
  - `ui/`: Contains the UI components of the app.
    - `answer_button.dart`: A custom button for answer options.
    - `summary_stuff/`: Contains widgets for the results summary.
    - `screens/`: Contains the different screens of the app.
      - `start_screen.dart`: The initial screen of the app.
      - `questions_screen.dart`: The screen that displays the questions.
      - `resulte_screen.dart`: The screen that displays the results.

## Getting Started

To get a local copy up and running, follow these simple steps.

### Prerequisites

- Flutter SDK: [https://flutter.dev/docs/get-started/install](https://flutter.dev/docs/get-started/install)

### Installation

1. Clone the repo
   ```sh
   git clone https://github.com/Joseph78888/Quiz-flutter-app.git
   ```
2. Navigate to the project directory
   ```sh
   cd quizz_app
   ```
3. Install packages
   ```sh
   flutter pub get
   ```
4. Run the app
   ```sh
   flutter run
   ```

