import 'package:flutter/material.dart';

class QuizUpQuestionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PlayerScore(username: 'Player 1', score: 100),
                  Text(
                    'TIME LEFT',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  Text(
                    '9',
                    style: TextStyle(color: Colors.blue, fontSize: 24),
                  ),
                  PlayerScore(username: 'Player 2', score: 0),
                ],
              ),
              SizedBox(height: 20),
              QuestionCard(
                question:
                    'What digital audio software did Apple discontinue the boxed version of in 2011?',
              ),
              AnswerOption(text: 'Jukebox Pro', isSelected: false),
              AnswerOption(text: 'Guitar Pro', isSelected: false),
              AnswerOption(text: 'Logic Pro', isSelected: true),
              AnswerOption(text: 'Mixer Pro', isSelected: false),
              SizedBox(height: 20),
              PowerUps(),
            ],
          ),
        ),
      ),
    );
  }
}

class PlayerScore extends StatelessWidget {
  final String username;
  final int score;

  PlayerScore({required this.username, required this.score});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(child: Icon(Icons.person)),
        SizedBox(height: 8),
        Text(
          username,
          style: TextStyle(color: Colors.white),
        ),
        Text(
          '$score',
          style: TextStyle(color: Colors.green, fontSize: 24),
        ),
      ],
    );
  }
}

class QuestionCard extends StatelessWidget {
  final String question;

  QuestionCard({required this.question});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        question,
        style: TextStyle(color: Colors.white, fontSize: 20),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class AnswerOption extends StatelessWidget {
  final String text;
  final bool isSelected;

  AnswerOption({required this.text, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isSelected ? Colors.green : Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}

class PowerUps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        PowerUpButton(label: '50/50', count: 1),
        PowerUpButton(label: 'Right Answer', count: 5),
      ],
    );
  }
}

class PowerUpButton extends StatelessWidget {
  final String label;
  final int count;

  PowerUpButton({required this.label, required this.count});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          label,
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(height: 4),
        Text(
          '$count',
          style: TextStyle(color: Colors.green, fontSize: 16),
        ),
      ],
    );
  }
}
