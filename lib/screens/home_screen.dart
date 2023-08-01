
import 'package:banao_flutter_project_task/models/events_model.dart';
import 'package:banao_flutter_project_task/models/programs_model.dart';
import 'package:banao_flutter_project_task/widgets/event_and_experiences.dart';
import 'package:banao_flutter_project_task/widgets/lesson_list.dart';
import 'package:banao_flutter_project_task/widgets/programs_card_model.dart';
import 'package:banao_flutter_project_task/widgets/programs_list.dart';
import 'package:flutter/material.dart';




class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeScreen();
  }
}

class _HomeScreen extends State<HomeScreen> {

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    double height=48;
    double width=160;
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.grey,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.menu_book_outlined,
            ),
            label: 'Learn',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.interests_outlined,
            ),
            label: 'Hub',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.wechat_outlined,
            ),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              height: 20,
              width: 20,
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/ellipse-14-bg.png"),
              ),
            ),
            label: 'Profile',
          ),
        ],
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        unselectedLabelStyle: const TextStyle(color: Colors.grey),
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        // fixedColor: Colors.black,
        iconSize: 30,
        onTap: _onItemTapped,
      ),
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.forum_outlined,size: 24,
              )),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.notifications_outlined,size: 24,))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15.0, left: 8, right: 8),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Hello, Priya!',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,fontFamily: 'Lora'),
              ),
              const Text(
                'What do you wanna learn today?',
                style: TextStyle(color: Colors.black45, fontSize: 18,),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: width,
                    height:height,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Row(
                        children: [
                          SizedBox(
                              height: 25,
                              child: Image.asset(
                                'assets/images/solid-files-book-mark.png',
                                height: 22,
                                width: 22,
                              )),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            'Programs',
                            style: TextStyle(fontSize: 15, color: Colors.blue),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: width,
                    height: height,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Row(
                        children: [
                          SizedBox(
                              height: 25,
                              child: Image.asset(
                                'assets/images/help-circle-ywP.png',
                                height: 22,
                                width: 22,
                              )),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            'Get help',
                            style: TextStyle(fontSize: 15, color: Colors.blue),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: width,
                    height: height,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Row(
                        children: [
                          SizedBox(
                              height: 25,
                              child: Image.asset(
                                'assets/images/solid-status-book-open.png',
                                height: 22,
                                width: 22,
                              )),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            'Learn',
                            style: TextStyle(fontSize: 15, color: Colors.blue),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: width,
                    height: height,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Row(
                        children: [
                          SizedBox(
                              height: 25,
                              child: Image.asset(
                                'assets/images/trello.png',
                                height: 22,
                                width: 22,
                              )),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            'DD Tracker',
                            style: TextStyle(fontSize: 15, color: Colors.blue),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const ProgramListView(),
              eventsAndExperiences(),
              const LessonListView(),
            ],
          ),
        ),
      ),
    );
  }
}


Widget eventsAndExperiences() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 20.0, bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Event and experiences',
              style: TextStyle(fontSize: 20,fontFamily: 'Lora'),
            ),
            InkWell(
              onTap: () {},
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
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            if(eventList.isEmpty) const Text("No Events is here"),
            for (int index = 0; index < eventList.length; index++)
              eventsAndExperiencesCardModel(
                  eventList[index].img,
                  eventList[index].category,
                  eventList[index].title,
                  eventList[index].date,
                  eventList[index].month,
                  eventList[index].day),

          ],
        ),
      ),
      const SizedBox(height: 10,),

      // (eventList.isNotEmpty)
      //     ? ListView.builder(
      //         itemCount: eventList.length,
      //         scrollDirection: Axis.horizontal,
      //         itemBuilder: (BuildContext context, int index) {
      //           return eventsAndExperiencesCardModel(eventList[index].img, eventList[index].category, eventList[index].title, eventList[index].date, eventList[index].month, eventList[index].day);
      //         })
      //     : const Text("No Events is their"),
    ],
  );
}
