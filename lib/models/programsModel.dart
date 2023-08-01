class ProgramModel {
  String createdAt;
  String name;
  String category;
  int lesson;
  String id;

  ProgramModel({
    required this.createdAt,
    required this.name,
    required this.category,
    required this.lesson,
    required this.id,
  });

  factory ProgramModel.fromJson(Map<String, dynamic> json) {
    return ProgramModel(
      createdAt: json['createdAt'],
      name: json['name'],
      category: json['category'],
      lesson: json['lesson'],
      id: json['id'],
    );
  }
}
