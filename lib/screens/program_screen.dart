
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/programs_card_model.dart';


class ProgramListScreen extends StatelessWidget{

  List<dynamic> programs;
  ProgramListScreen({super.key, required this.programs});
  @override
  Widget build(context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Programs For You"),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns in the grid
          crossAxisSpacing: 6.0,
          mainAxisSpacing: 6.0,
        ),
        itemCount: programs.length,
        itemBuilder: (context, index) {
          final program = programs[index];
          return GestureDetector(
            onTap: () {},
            child: SizedBox(
              height: 400,
              child: programsCardModelVerticalScreen("frame-122-ZNZ.png", programs[index]['category'],
                  programs[index]['name'], programs[index]['lesson']),
            ),
          );
        },
      )


    );
  }
}