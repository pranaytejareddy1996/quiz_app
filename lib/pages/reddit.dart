import 'package:flutter/material.dart';

class RedditPostScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reddit'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          RedditPost(),
          SizedBox(height: 20),
          PromotedPost(),
        ],
      ),
    );
  }
}

class RedditPost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'r/hyderabad • 1d • 97.3k views',
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(height: 8.0),
          Text(
            'A generation of Indians must work 84 hrs/week: Kotak AMC\'s Nilesh Shah',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          SizedBox(height: 8.0),
          Image.network(
            'https://via.placeholder.com/150',
            height: 150,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 8.0),
          Text(
            'Kotak Asset Management Company MD Nilesh Shah said a generation of Indians must work 84 hours every week to maintain the country\'s growth. "A generation of Koreans worked 85 hours per week. That means 12 hours a day, every day...A generation of Indians must work like Koreans," Shah said.',
          ),
          SizedBox(height: 8.0),
          Row(
            children: [
              Icon(Icons.arrow_upward, color: Colors.grey),
              Text('321', style: TextStyle(color: Colors.grey)),
              SizedBox(width: 16.0),
              Icon(Icons.comment, color: Colors.grey),
              Text('195', style: TextStyle(color: Colors.grey)),
              SizedBox(width: 16.0),
              Icon(Icons.share, color: Colors.grey),
              Text('152', style: TextStyle(color: Colors.grey)),
            ],
          ),
        ],
      ),
    );
  }
}

class PromotedPost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'u/RevenueCat • Promoted',
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(height: 8.0),
          Text(
            'Building a subscription app in 2024? We\'ve broken down, in excruciating detail, everything...',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ],
      ),
    );
  }
}
