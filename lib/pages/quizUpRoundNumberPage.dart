import 'package:flutter/material.dart';

class QuizUpRoundNumberPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PlayerScore(username: 'Player 1', score: 100),
                    Column(
                      children: [
                        Text(
                          'TIME LEFT',
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                        Text(
                          '10',
                          style: TextStyle(color: Colors.blue, fontSize: 24),
                        ),
                      ],
                    ),
                    PlayerScore(username: 'Player 2', score: 0),
                  ],
                ),
              ),
              Column(
                children: [
                  Icon(Icons.computer, size: 80, color: Colors.orange),
                  SizedBox(height: 16),
                  Text(
                    'Apple',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text(
                    'Tech',
                    style: TextStyle(color: Colors.white70, fontSize: 16),
                  ),
                  SizedBox(height: 40),
                  Text(
                    'ROUND 6',
                    style: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '6 of 7',
                    style: TextStyle(color: Colors.white70, fontSize: 16),
                  ),
                ],
              ),
              SizedBox(height: 20),
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
