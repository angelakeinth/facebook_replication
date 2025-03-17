import 'package:flutter/material.dart';

class NewsfeedCard extends StatelessWidget {
  final String userName;
  final String postDate;
  final String postContent;
  final String userProfile;
  final String postImage;
  final int reactions;
  final int comments;
  final int shares;

  const NewsfeedCard({
    super.key,
    required this.userName,
    required this.postDate,
    required this.postContent,
    required this.userProfile,
    required this.postImage,
    required this.reactions,
    required this.comments,
    required this.shares,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // User Info Row
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(userProfile),
            ),
            title: Text(userName, style: const TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text(postDate),
          ),

          // Post Content (Now ABOVE the Image)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Text(
              postContent,
              style: const TextStyle(fontSize: 14),
            ),
          ),

          // Post Image
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Image.asset(postImage, fit: BoxFit.cover),
          ),

          // Reactions, Comments, Shares Row
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Reaction Icons + Count
                Row(
                  children: [
                    const Icon(Icons.thumb_up, color: Colors.blue, size: 18),
                    const Icon(Icons.favorite, color: Colors.red, size: 18),
                    const Icon(Icons.emoji_emotions, color: Colors.orange, size: 18),
                    const SizedBox(width: 4),
                    Text('$reactions'),
                  ],
                ),

                // Comments & Shares Count
                Row(
                  children: [
                    Text('$comments Comments'),
                    const SizedBox(width: 10),
                    Text('$shares Shares'),
                  ],
                ),
              ],
            ),
          ),

          // Divider
          const Divider(),

          // Like, Comment, Share Buttons
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildIconButton(Icons.thumb_up_alt_outlined, "Like"),
                _buildIconButton(Icons.comment_outlined, "Comment"),
                _buildIconButton(Icons.share_outlined, "Share"),
              ],
            ),
          ),

          // Divider
          const Divider(),

          // Comment Input Box
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Row(
              children: [
                // Profile Picture
                const CircleAvatar(
                  backgroundImage: AssetImage('../assets/images/sana.jpg'), // Replace with actual image
                  radius: 18,
                ),

                const SizedBox(width: 10),

                // Comment Input Field
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: const Text(
                      "Write a comment...",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),

                const SizedBox(width: 8),

                // Icons for attachments (GIF, Emoji, Camera, etc.)
                const Icon(Icons.gif, color: Colors.grey),
                const SizedBox(width: 5),
                const Icon(Icons.emoji_emotions_outlined, color: Colors.grey),
                const SizedBox(width: 5),
                const Icon(Icons.photo_camera_outlined, color: Colors.grey),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIconButton(IconData icon, String label) {
    return Row(
      children: [
        Icon(icon, color: Colors.grey),
        const SizedBox(width: 5),
        Text(label, style: const TextStyle(color: Colors.grey)),
      ],
    );
  }
}
