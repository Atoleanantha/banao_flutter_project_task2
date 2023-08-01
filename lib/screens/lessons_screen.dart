
import 'package:flutter/material.dart';

import '../widgets/lessons_cards_model.dart';


class LessonsListScreen extends StatelessWidget{

  List<dynamic> lessons;
  LessonsListScreen({super.key, required this.lessons});
  @override
  Widget build(context) {

    return Scaffold(
      appBar: AppBar(
        title:const Text("Lessons For You"),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 8.0/10,
          crossAxisCount: 2, // Number of columns in the grid
          crossAxisSpacing: 2.0,
          mainAxisSpacing: 2.0,
        ),
        itemCount: lessons.length,
        itemBuilder: (context, index) {
          final lesson = lessons[index];
          return GestureDetector(
            onTap: () {},
            child: SizedBox(
              height: 400,
              child: lessonsCardModelVerticalScreen('frame-122.png', lessons[index].category, lessons[index].name, lessons[index].duration,lessons[index].locked),
            ),
          );
        },
      )


    );
  }
}