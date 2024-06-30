import 'package:flutter/material.dart';
import 'package:myapp/pages/postVIew.dart';
import 'package:myapp/pages/quizUpMatchupScreen.dart';
import 'package:myapp/pages/quizUpQuestionScreen.dart';
import 'package:myapp/pages/quizUpResultPage.dart';
import 'package:myapp/pages/quizUpRoundNumberPage.dart';

import 'pages/reddit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: QuizUpMatchupScreen(),
    );
  }
}