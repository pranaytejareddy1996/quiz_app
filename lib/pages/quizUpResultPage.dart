
import 'package:flutter/material.dart';

class QuizUpResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          // Background confetti effect
          Center(child: Text('Confetti Animation Placeholder')),

          // Content
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'RESULTS',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'YOU WIN!',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30),
              // Character images and scores
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.red,
                        child: Icon(Icons.flash_on, color: Colors.white, size: 40),
                      ),
                      SizedBox(height: 10),
                      Text(
                        '15',
                        style: TextStyle(color: Colors.green, fontSize: 24),
                      ),
                      Text(
                        'Player 1',
                        style: TextStyle(color: Colors.green),
                      ),
                      Text(
                        'Level 35',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.white,
                        child: Icon(Icons.apple, color: Colors.black, size: 40),
                      ),
                      SizedBox(height: 10),
                      Text(
                        '17',
                        style: TextStyle(color: Colors.red, fontSize: 24),
                      ),
                      Text(
                        'Player 2',
                        style: TextStyle(color: Colors.red),
                      ),
                      Text(
                        'Level 1',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 30),
              Text(
                'The sweet taste of victory! Want more?',
                style: TextStyle(color: Colors.white, fontSize: 16),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30),
              // Buttons
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      // style: ElevatedButton.styleFrom(),
                      child: Text('Rematch'),
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {},
                      // style: ElevatedButton.styleFrom(),
                      child: Text('Another Opponent'),
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {},
                      // style: ElevatedButton.styleFrom(),
                      child: Text('View Results'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

