import 'package:flutter/material.dart';

class Question {
  final String questionText;
  final bool answer;

  Question({required this.questionText, required this.answer});
}

class Questions {
  List<Question> questionBank = [
    Question(questionText: "Question1", answer: true),
    Question(questionText: "Question2", answer: false),
    Question(questionText: "Question3", answer: true),
    Question(questionText: "Question4", answer: false),
    Question(questionText: "Question5", answer: false),
    Question(questionText: "Question6", answer: true),
    Question(questionText: "Question7", answer: true),
  ];
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz application demo"),
        ),
        body: QuizPage(),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int questionNumber = 0;
  int currentScore = 0;
  @override
  Widget build(BuildContext context) {

    Questions question = Questions();

    void updateQuestionNumber() {
      setState(() {
        questionNumber = questionNumber + 1;
      });
    }

    void updateScore(bool choice, int questionNumber) {
      if (question.questionBank.length == questionNumber) {
        print("end of questions");
      } else {
        if (question.questionBank[questionNumber].answer == choice) {
          setState(() {
            currentScore += 1;
          });

        }
      }
      updateQuestionNumber();
    }

    bool checkQuestionNumber(int questionNumber) {
      return questionNumber < question.questionBank.length ? true : false;
    }

    return Container(
      child: Column(
        children: [
          Center(
            child: Text(
              checkQuestionNumber(questionNumber)
                  ? question.questionBank[questionNumber].questionText
                      .toString()
                  : "END",
              style: TextStyle(fontSize: 25),
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  if (question.questionBank.length == questionNumber) {
                    print("End");
                  } else {
                    updateScore(true, questionNumber);
                  }
                });
              },
              child: Text("True")),
          SizedBox(
            height: 25.0,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  if (question.questionBank.length == questionNumber) {
                    print("End");
                  } else {
                    updateScore(false, questionNumber);
                  }
                });
              },
              child: Text("False")),
          Padding(
            padding: EdgeInsets.all(30),
            child: Center(
              child: Text("current Score is: "),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(30),
            child: Center(
              child: Text("$currentScore"),
            ),
          ),
        ],
      ),
    );
  }
}
