import 'package:flutter/material.dart';

import 'widgets/program.dart';
import 'widgets/welcome.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Widget> screen = [
    const ProgramWidget(),
    const Welcome(),
  ];

  int currentTab = 1;

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const ProgramWidget();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MaterialButton(
              onPressed: () {
                setState(() {
                  currentTab = 1;
                  currentScreen = screen[0];
                });
              },
              minWidth: 40,
              child: Column(
                children: [
                  Icon(
                    Icons.star,
                    color: currentTab == 1
                        ? const Color.fromARGB(255, 6, 186, 12)
                        : Colors.black,
                  ),
                  Text(
                    "My Program",
                    style: TextStyle(
                      color: currentTab == 1
                          ? const Color.fromARGB(255, 6, 186, 12)
                          : Colors.black,
                    ),
                  )
                ],
              ),
            ),
            MaterialButton(
              onPressed: () {
                setState(() {
                  currentScreen = const Welcome();
                  currentTab = 0;
                });
              },
              minWidth: 40,
              child: Column(
                children: [
                  Icon(
                    Icons.chat,
                    color: currentTab == 0
                        ? const Color.fromARGB(255, 6, 186, 12)
                        : Colors.black,
                  ),
                  Text(
                    "Chat",
                    style: TextStyle(
                      color: currentTab == 0
                          ? const Color.fromARGB(255, 6, 186, 12)
                          : Colors.black,
                    ),
                  )
                ],
              ),
            ),
            MaterialButton(
              onPressed: () {
                setState(() {
                  currentScreen = Text("data");
                  currentTab = 2;
                });
              },
              minWidth: 40,
              child: Column(
                children: [
                  Icon(
                    Icons.event_note_rounded,
                    color: currentTab == 2
                        ? const Color.fromARGB(255, 6, 186, 12)
                        : Colors.black,
                  ),
                  Text(
                    "Notes",
                    style: TextStyle(
                      color: currentTab == 2
                          ? const Color.fromARGB(255, 6, 186, 12)
                          : Colors.black,
                    ),
                  )
                ],
              ),
            ),
            MaterialButton(
              onPressed: () {
                setState(() {
                  currentScreen = Text("data");
                  currentTab = 3;
                });
              },
              minWidth: 40,
              child: Column(
                children: [
                  Icon(
                    Icons.person,
                    color: currentTab == 3
                        ? const Color.fromARGB(255, 6, 186, 12)
                        : Colors.black,
                  ),
                  Text(
                    "Profile",
                    style: TextStyle(
                      color: currentTab == 3
                          ? const Color.fromARGB(255, 6, 186, 12)
                          : Colors.black,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),


      
    );
  }
}
