
class Lesson {
  final String id;
  final String name;
  final String category;
  final int duration;
  final bool locked;

  Lesson({required this.id, required this.name, required this.category, required this.duration, required this.locked});

  factory Lesson.fromJson(Map<String, dynamic> json) {
    return Lesson(
      id: json['id'],
      name: json['name'],
      category: json['category'],
      duration: json['duration'],
      locked: json['locked'],
    );
  }
}
