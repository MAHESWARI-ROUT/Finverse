import 'package:finverse/models/comment.dart';
import 'package:flutter/material.dart';

class CommentSection extends StatelessWidget {
  CommentSection({super.key});

  final List<Comment> comments = [
    Comment(
      name: "Wijaya Abadi",
      message: "Yes, This is pretty informative.\nThanks Venky!",
      avatarUrl: "assets/images/Group362.png",
      isMe: false,
    ),
    Comment(
      name: "Johny Wise",
      message: "SIP seems interesting.",
      avatarUrl: "assets/images/Group402.png",
      isMe: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(), // prevent nested scroll conflict
      shrinkWrap: true, // so it fits inside Column
      padding: EdgeInsets.all(12),
      itemCount: comments.length,
      itemBuilder: (context, index) {
        final comment = comments[index];
        return Align(
          alignment: comment.isMe
              ? Alignment.centerRight
              : Alignment.centerLeft,
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 6),
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: comment.isMe ? Colors.blue[100] : Colors.grey[200],
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (!comment.isMe)
                  CircleAvatar(
                    backgroundImage: comment.isAsset!
                        ? AssetImage(comment.avatarUrl) as ImageProvider
                        : NetworkImage(comment.avatarUrl),
                    radius: 18,
                  ),
                SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      comment.name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(comment.message, style: TextStyle(fontSize: 13)),
                  ],
                ),
                if (comment.isMe) ...[
                  SizedBox(width: 8),
                  CircleAvatar(
                    backgroundImage: comment.isAsset!
                        ? AssetImage(comment.avatarUrl) as ImageProvider
                        : NetworkImage(comment.avatarUrl),
                    radius: 18,
                  ),
                ],
              ],
            ),
          ),
        );
      },
    );
  }
}
