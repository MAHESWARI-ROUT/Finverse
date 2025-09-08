import 'package:finverse/models/comment.dart';
import 'package:finverse/widgets/verified_badge.dart';
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
      isMe: true,
    ),
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
      isMe: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true, // so it fits inside Column
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
                  Stack(
                    children: [
                      CircleAvatar(
                        backgroundImage: comment.isAsset!
                            ? AssetImage(comment.avatarUrl) as ImageProvider
                            : NetworkImage(comment.avatarUrl),
                        radius: 18,
                      ),
                      Positioned(
                        bottom: 0,
                          right: 0,
                          child: VerifiedBadge(size: 12,))
                    ],
                  ),
                SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          comment.name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(width: 5,),
                        Icon(Icons.circle,color: Colors.green,size: 10,)
                      ],
                    ),
                    SizedBox(height: 4),
                    Text(comment.message, style: TextStyle(fontSize: 13)),
                  ],
                ),
                if (comment.isMe) ...[
                  SizedBox(width: 8),
                  Stack(
                    children: [
                      CircleAvatar(
                        backgroundImage: comment.isAsset!
                            ? AssetImage(comment.avatarUrl) as ImageProvider
                            : NetworkImage(comment.avatarUrl),
                        radius: 18,
                      ),
                      Positioned(
                          bottom: 0,
                          right: 0,
                          child: VerifiedBadge(size: 12,))
                    ],
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
