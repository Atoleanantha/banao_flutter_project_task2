import 'dart:convert';

import 'package:banao_flutter_project_task/screens/lessons_screen.dart';
import 'package:banao_flutter_project_task/widgets/programs_card_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../models/lessonModel.dart';
import '../models/programs_model.dart';
import 'lessons_cards_model.dart';

class LessonListView extends StatefulWidget {
  const LessonListView({super.key});

  @override
  State<StatefulWidget> createState() {
    return _LessonListViewState();
  }


}

class _LessonListViewState extends State<LessonListView> {

  List<Lesson> lessons = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    final Uri url = Uri.parse('https://632017e19f82827dcf24a655.mockapi.io/api/lessons');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final jsonBody = json.decode(response.body);
      if (jsonBody['items'] != null) {
        setState(() {
          lessons = (jsonBody['items'] as List).map((item) => Lesson.fromJson(item)).toList();
        });
      }
    } else {
      // Handle error
      print('Failed to fetch data');
    }
  }


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, bottom: 10),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Lessons For You',
                  style: TextStyle(fontSize: 20,fontFamily: 'Lora'),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LessonsListScreen(lessons: lessons)));
                  },
                  onLongPress: () {
                    const Text('See All');
                  },
                  child: Row(
                    children: const [
                      Text(
                        "See All",
                        style: TextStyle(color: Colors.black45),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.black45,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 15,),
          SingleChildScrollView(
            scrollDirection:  Axis.horizontal,
            child: Row(
              children: [
                for(int index=0;index<lessons.length;index++)
                  lessonCardModel('frame-122.png', lessons[index].category, lessons[index].name, lessons[index].duration,lessons[index].locked),
              ],
            ),
          ),
        ],
      )
    );
  }}