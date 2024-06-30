
import 'package:flutter/material.dart';

class RedditCommentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('r/hyderabad'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          RedditPostHeader(),
          CommentSection(),
        ],
      ),
    );
  }
}

class RedditPostHeader extends StatelessWidget {
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
            'A generation of Indians must work 84 hrs/week: Kotak AMC\'s Nilesh Shah',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          SizedBox(height: 8.0),
          Text(
            '322 upvotes • 196 comments',
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(height: 8.0),
          Image.network(
            'https://via.placeholder.com/150',
            height: 150,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}

class CommentSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CommentItem(
          username: 'AutoModerator',
          isMod: true,
          comment: 'Dear OP, if this is original conte...',
          replies: 1,
        ),
        CommentItem(
          username: 'Suspicious_Lake6413',
          comment: 'Another day Another Erripuku',
          upvotes: 439,
        ),
        CommentItem(
          username: 'Hefty_Blacksmith_266',
          comment: 'This is just way of these big rich people to reduce bad news about their company by creating a controversy..\n\n'
              'Recently rbi has shunned kotak bank for it\'s illigal and mischief and now it\'s management have decided to act on the public outrage by creating a bigger outrage.\n\n'
              'Also idk if it\'s just me but\n\n'
              'Number are going like 70, 84....\n\n'
              'I say the next number is going to be 98 by formula 70+14n . What are your thoughts',
          upvotes: 68,
          replies: 2,
        ),
        CommentItem(
          username: 'Suspicious_Lake6413',
          comment: 'Let\'s go with 100...',
          upvotes: 10,
          replies: 1,
        ),
        CommentItem(
          username: 'idiotbyvillagewell',
          comment: '',
          upvotes: 0,
        ),
      ],
    );
  }
}

class CommentItem extends StatelessWidget {
  final String username;
  final bool isMod;
  final String comment;
  final int upvotes;
  final int replies;

  CommentItem({
    required this.username,
    this.isMod = false,
    required this.comment,
    this.upvotes = 0,
    this.replies = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.account_circle,
                size: 24.0,
                color: Colors.blue,
              ),
              SizedBox(width: 8.0),
              Text(
                username,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: isMod ? Colors.green : Colors.black,
                ),
              ),
              if (isMod)
                Text(
                  ' MOD',
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              Text(
                ' • 1d',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          SizedBox(height: 8.0),
          Text(comment),
          if (replies > 0)
            Padding(
              padding: const EdgeInsets.only(left: 32.0),
              child: Text(
                '$replies more reply',
                style: TextStyle(color: Colors.blue),
              ),
            ),
          SizedBox(height: 8.0),
          Row(
            children: [
              Icon(Icons.arrow_upward, color: Colors.grey),
              Text('$upvotes', style: TextStyle(color: Colors.grey)),
              SizedBox(width: 16.0),
              Icon(Icons.reply, color: Colors.grey),
              SizedBox(width: 16.0),
              Icon(Icons.share, color: Colors.grey),
            ],
          ),
          Divider(),
        ],
      ),
    );
  }
}