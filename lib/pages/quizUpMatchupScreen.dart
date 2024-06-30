import 'package:flutter/material.dart';

class QuizUpMatchupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              _buildPlayerCard(
                'MSAppleX',
                'Albert nStein',
                'Level 35',
                'England, United Kingdom',
                'images/food.jpg', // Replace with your image asset
                'Qluzo',
                3,
              ),
              Divider(
                color: Colors.white,
                // thickness: 0.1,
                height: 6,
              ),
              _buildPlayerCard(
                'Jeb Sumner',
                'Odd Number',
                'Level 1',
                'Nevada, United States',
                'images/boy.jpg', // Replace with your image asset
                'Ninja',
                2,
              ),
            ],
          ),
          Center(
              child: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Colors.white,
            ),
            child: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.black,
              child: Icon(
                Icons.flash_on,
                size: 30,
                color: Colors.white,
              ),
            ),
          )),
        ],
      ),
    );
  }

  Widget _buildPlayerCard(String username, String displayName, String level,
      String location, String avatar, String character, int stars) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(avatar),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(
                        'images/boy.jpg'), // Replace with your icon asset
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        username,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '$displayName\n$level\n$location',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    character,
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  Row(
                    children: List.generate(
                      5,
                      (index) => Icon(
                        Icons.star,
                        color: index < stars ? Colors.yellow : Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
