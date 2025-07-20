class Course {
  final String preview;
  final String title;
  final String description;
  final String duration;
  Course({required this.preview,required this.title,
    required this.description,
    required this.duration,});
  factory Course.fromJson(Map<String, dynamic> json) {
    return Course(
      preview: json['preview'],
      title: json['title'],
      description: json['description'],
      duration: json['duration'],
    );
  }
}