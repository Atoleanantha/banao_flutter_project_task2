
import 'package:banao_flutter_project_task/models/programs_model.dart';

class LessonsModel extends ProgramModel{
  LessonsModel({
    required super.img,
    required super.category,
    required super.title,
    required this.time,
 
  }) : super(numberOfLessons: time) ;
  int time;
}

List lessonsList=[
 LessonsModel(img:'frame-122.png',category: 'BABYCARE', title: 'Understanding of human behaviour', time: 3),
 LessonsModel(img:'frame-122.png',category: 'BABYCARE', title: 'Understanding of human behaviour', time: 3),
 LessonsModel(img:'frame-122.png',category: 'BABYCARE', title: 'Understanding of human behaviour', time: 3),
 LessonsModel(img:'frame-122.png',category: 'BABYCARE', title: 'Understanding of human behaviour', time: 3),
 LessonsModel(img:'frame-122.png',category: 'BABYCARE', title: 'Understanding of human behaviour', time: 3),
 LessonsModel(img:'frame-122.png',category: 'BABYCARE', title: 'Understanding of human behaviour', time: 3),
];