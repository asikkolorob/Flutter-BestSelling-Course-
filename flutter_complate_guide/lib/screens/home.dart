import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../widgets/questions.dart';
import '../widgets/answer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const String id = 'home-screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _questionsIndex = 0;

  final questions = [
    {
      'questionsText': 'Flutter is a ____.',
      'answers': [
        'Programming Language',
        'SDK',
        'Both',
        'None of the above',
      ]
    },
    {
      'questionsText':
          'Flutter is an __________ mobile application development framework created by Google.',
      'answers': [
        'Open-source',
        'Shareware',
        'Both',
        'None of the above',
      ]
    },
    {
      'questionsText':
          'Flutter apps are written in the __________ language and make use of many of the language\'s more advanced features.',
      'answers': [
        'C',
        'C++',
        'Dart',
        'Swift',
      ]
    },
    {
      'questionsText': 'What are the advantages of Flutter ?',
      'answers': [
        'Cross-platform Development',
        'Faster Development',
        'UI Focused',
        'All of the above',
      ]
    },
    {
      'questionsText': 'Which of the following widgets use for layout ?',
      'answers': [
        'Text',
        'Column',
        'Expanded',
        'Inkwell',
      ]
    },
    {
      'questionsText':
          'Which of the following widgets used for repeating the content ?',
      'answers': [
        'Expanded',
        'ListView',
        'Stack',
        'Scaffold',
      ]
    },
  ];

  void _answerQuestions() {
    setState(() {
      _questionsIndex = _questionsIndex + 1;
    });
    if (_questionsIndex < questions.length) {
      print('more questions');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff142540),
      appBar: AppBar(
        backgroundColor: const Color(0xff142540),
        elevation: 0.0,
        centerTitle: true,
        title: const Text(
          'Quiz App',
          style: TextStyle(fontSize: 25.0),
        ),
      ),
      body: Column(
        children: [
          QuestionsWidget(
            questionsText:
                questions[_questionsIndex]['questionsText'].toString(),
          ),
          const SizedBox(height: 30.0),
          ...(questions[_questionsIndex]['answers'] as List<String>)
              .map((answer) {
            return AnswerWidget(
              selectHandler: _answerQuestions,
              answerText: answer,
            );
          }),
          Lottie.network(
            'https://assets8.lottiefiles.com/packages/lf20_pu8dy82j.json',
            height: 150.0,
            width: 260.0,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
