import 'package:flutter/material.dart';
import 'package:flutter_play_ground/simpleQuestionsApp/Question.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _index = 0;
  bool _showResultScreen = false;

  final questions = [
    Question("what is your favorite animal ?", "Cat", "Dog", "Lion"),
    Question("what is your favorite color ?", "Red", "Blue", "Green"),
    Question("what is your favorite name ?", "Mohamed", "Ahmed", "Mahmoud"),
  ];

  List<String> answers = [];

  void _getNextQuestion(String? answer) {
    if(answer == null){
      setState(() {
        _index = 0 ;
        _showResultScreen = false;
      });
      return;
    }
    if (_index < questions.length - 1 ) {
      setState(() {
        _index++;
      });
      answers.add(answer!);
    } else {
      setState(() {
        _showResultScreen = true;
        answers.add(answer!);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_showResultScreen) {
      return Scaffold(
        body : resultScreen(answers),
      );
    } else {
      Question question = questions.elementAt(_index);
      return Scaffold(
        body: questionsScreen(question),
      );
    }
  }


  Widget resultScreen(List<String> answers) {
    List<Widget> screen =[];
    screen.add(const Text("Your Answers"));
    screen.add( const SizedBox(height: 20.0) );
    screen.add( Text("1 :${answers.elementAt(0)}"));
    screen.add( const SizedBox(height: 20.0) );
    screen.add( Text("2 :${answers.elementAt(1)}"));
    screen.add( const SizedBox(height: 20.0) );
    screen.add( Text("3 :${answers.elementAt(2)}"));
    screen.add( const SizedBox(height: 20.0) );
    screen.add( ElevatedButton(
        onPressed: () {
          _getNextQuestion(null);
        },
        child: const Text("Restart")) );
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: screen,
      ),
    );
  }

  Widget questionsScreen(Question question) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            question.question,
          ),
          const SizedBox(height: 20.0),
          ElevatedButton(
              onPressed: () {
                _getNextQuestion(question.answer1);
              },
              child: Text(question.answer1)),
          const SizedBox(height: 20.0),
          ElevatedButton(
              onPressed: () {
                _getNextQuestion(question.answer2);
              },
              child: Text(question.answer2)),
          const SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              _getNextQuestion(question.answer3);
            },
            child: Text(question.answer3),
          ),
        ],
      ),
    );
  }

}
