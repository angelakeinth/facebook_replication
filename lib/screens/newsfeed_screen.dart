import 'package:flutter/material.dart';
import '../widgets/newsfeed.dart';

class NewsFeedScreen extends StatelessWidget {
  const NewsFeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        NewsfeedCard(
          userName: 'John Doe',
          postDate: 'March 15, 2025',
          postContent: 'di ko alam san ako lulugar pwede sa tabi mo na lang',
          userProfile: '../assets/images/sana.jpg',
          postImage: '../assets/images/chae.jpg',
          reactions: 120, // Added reactions count
          comments: 45, // Added comments count
          shares: 30, // Added shares count
        ),
      ],
    );
  }
}
