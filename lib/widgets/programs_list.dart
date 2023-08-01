import 'dart:convert';

import 'package:banao_flutter_project_task/screens/program_screen.dart';
import 'package:banao_flutter_project_task/widgets/programs_card_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class ProgramListView extends StatefulWidget {
  const ProgramListView({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ProgramListViewState();
  }


}

class _ProgramListViewState extends State<ProgramListView> {
  List<dynamic> programs = []; // List to store the fetched programs

  @override
  void initState() {
    super.initState();
    _fetchPrograms(); // Call the function to fetch programs when the widget initializes
  }

  Future<void> _fetchPrograms() async {
    final apiUrl = 'https://632017e19f82827dcf24a655.mockapi.io/api/programs';

    try {
      final response = await http.get(Uri.parse(apiUrl));

      if (response.statusCode == 200) {
        setState(() {
          // Parse the response JSON and update the programs list
          programs = json.decode(response.body)['items'];
        });
      } else {
        print('Failed to load data: ${response.statusCode}');
      }
    } catch (e) {
      print('Error fetching data: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Programs for you',
                style: TextStyle(fontSize: 20, fontFamily: 'Lora'),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ProgramListScreen(programs:programs)));
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
          const SizedBox(height: 15,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                if(programs.isEmpty) const Text("No programs is their"),
                for (int index = 0; index < programs.length; index++)
                  programsCardModel("frame-122-ZNZ.png", programs[index]['category'],
                      programs[index]['name'], programs[index]['lesson'])
              ],
            ),
          ),
          const SizedBox(height: 10,),
        ],
      ),
    );
  }}