class Comment {
  final String name;
  final String message;
  final String avatarUrl;
  final bool isMe;
  final bool? isAsset;
  Comment({
    required this.name,
    required this.message,
    required this.avatarUrl,
    required this.isMe,
     this.isAsset = true
  });
}