
import 'package:banao_flutter_project_task/models/programs_model.dart';

class EventModel extends ProgramModel{
  EventModel({
    required super.img,
    required super.category,
    required super.title,
    required this.date,
    required this.month,
    required this.day,
  }) : super(numberOfLessons: date) ;
  String month;
  String day;
  int date;
}

List eventList=[
  EventModel(img:'frame-122.png',category: 'BABYCARE', title: 'Understanding of human behaviour', date: 13, month: 'Feb',day:'Sunday'),
  EventModel(img:'frame-122.png',category: 'BABYCARE', title: 'Understanding of human behaviour', date: 13, month: 'Feb',day:'Sunday'),
  EventModel(img:'frame-122.png',category: 'BABYCARE', title: 'Understanding of human behaviour', date: 13, month: 'Feb',day:'Sunday'),
  EventModel(img:'frame-122.png',category: 'BABYCARE', title: 'Understanding of human behaviour', date: 13, month: 'Feb',day:'Sunday'),
  EventModel(img:'frame-122.png',category: 'BABYCARE', title: 'Understanding of human behaviour', date: 13, month: 'Feb',day:'Sunday'),
  EventModel(img:'frame-122.png',category: 'BABYCARE', title: 'Understanding of human behaviour', date: 13, month: 'Feb',day:'Sunday'),
  ];