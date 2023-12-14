import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ProgramWidget extends StatefulWidget {
  const ProgramWidget({super.key});

  @override
  State<ProgramWidget> createState() => _ProgramWidgetState();
}

class _ProgramWidgetState extends State<ProgramWidget> {
  double currentTab = 1;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text(
            "Fidele's Program",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          actions: const [
            IconButton(
              onPressed: null,
              icon: Icon(
                Icons.more_vert,
                color: Colors.black,
              ),
            )
          ],
          bottom: const TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            labelStyle: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
            indicatorColor: Color.fromARGB(255, 6, 186, 12),
            labelColor: Color.fromARGB(255, 6, 186, 12),
            unselectedLabelColor: Colors.black,
            tabs: [
              Tab(
                text: "Focus",
              ),
              Tab(
                text: "Plan",
              ),
            ],
          ),
        ),
        body: const TabBarView(
          dragStartBehavior: DragStartBehavior.start,
          children: [FocusTab(), PlanTab()],
        ),
      
            bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MaterialButton(
              onPressed:  (){
                setState(() {
                  currentTab = 1;
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
              onPressed: (){
                setState(() {
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
              onPressed:  (){
                setState(() {
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
              onPressed: (){
                setState(() {
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


      
      ),
    );
  }
}

//La classe FocusTab
class FocusTab extends StatelessWidget {
  const FocusTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(padding: EdgeInsets.all(14.0), child: FocusColumnWidget()),
    );
  }
}

// La colonne de FocusTab
class FocusColumnWidget extends StatelessWidget {
  const FocusColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          height: 300,
          decoration: BoxDecoration(
            color: Colors.blue.shade300,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(40),
              topRight: Radius.circular(40),
              bottomRight: Radius.circular(40),
            ),
          ),
          padding: const EdgeInsets.only(
            right: 50,
          ),
          child: Image.asset(
            "images/dimitri.png",
            fit: BoxFit.cover,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(
            top: 14.0,
          ),
          child: Text(
            "Next thing to do",
            textAlign: TextAlign.start,
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(
            top: 14.0,
          ),
          child: Text(
            "First Career Pulse Assessment",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(
            top: 14.0,
          ),
          child: Text(
            "Complete your assessment before the first coaching session",
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 14.0,
          ),
          child: Container(
            height: 50,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 6, 186, 12),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: const Center(
              child: Text(
                "Start the Assessment",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class PlanTab extends StatelessWidget {
  const PlanTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(14.0),
        child: PlanTabListTabWidget(),
      ),
    );
  }
}

class PlanTabListTabWidget extends StatelessWidget {
  const PlanTabListTabWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "My Coach",
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 17.0,
          ),
          child: Center(
            child: ListTile(
              contentPadding: EdgeInsets.only(
                left: 0,
                right: 0,
              ),
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(
                  "images/dimitri.png",
                ),
              ),
              title: Text(
                "Dimitri",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                "View your coach",
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.grey,
                size: 15,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(12.0),
        ),
        Text(
          "My Path",
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 17.0,
          ),
          child: Center(
            child: ListTile(
              contentPadding: EdgeInsets.only(
                left: 0,
                right: 0,
              ),
              leading: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.orange,
                child: Icon(
                  Icons.add_chart_rounded,
                  color: Colors.white,
                ),
              ),
              title: Text(
                "Fisrt Career Pulse Assessment",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.grey,
                size: 15,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 20,
            top: 12,
          ),
          child: Icon(
            Icons.more_vert,
            color: Colors.grey,
            size: 12,
          ),
        ),
        ListViewWidget(),
        Padding(
          padding: EdgeInsets.only(
            left: 20,
            top: 12,
          ),
          child: Icon(
            Icons.more_vert,
            color: Colors.grey,
            size: 12,
          ),
        ),
        ListViewWidget(),
        Padding(
          padding: EdgeInsets.only(
            left: 20,
            top: 12,
          ),
          child: Icon(
            Icons.more_vert,
            color: Colors.grey,
            size: 12,
          ),
        ),
        ListViewWidget(),
        Padding(
          padding: EdgeInsets.only(
            left: 20,
            top: 12,
          ),
          child: Icon(
            Icons.more_vert,
            color: Colors.grey,
            size: 12,
          ),
        ),
        ListViewWidget(),
        Padding(
          padding: EdgeInsets.only(
            left: 20,
            top: 12,
          ),
          child: Icon(
            Icons.more_vert,
            color: Colors.grey,
            size: 12,
          ),
        ),
        ListViewWidget(),
        Padding(
          padding: EdgeInsets.only(
            left: 20,
            top: 12,
          ),
          child: Icon(
            Icons.more_vert,
            color: Colors.grey,
            size: 12,
          ),
        ),
        ListViewWidget(),
        Padding(
          padding: EdgeInsets.only(
            left: 20,
            top: 12,
          ),
          child: Icon(
            Icons.more_vert,
            color: Colors.grey,
            size: 12,
          ),
        ),
      ],
    );
  }
}

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        top: 17.0,
      ),
      child: Center(
        child: ListTile(
          contentPadding: EdgeInsets.only(
            left: 0,
            right: 0,
          ),
          leading: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.blue,
              child: Text(
                "1",
                style: TextStyle(color: Colors.white),
              )),
          title: Text(
            "Design Thinking",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios_rounded,
            color: Colors.grey,
            size: 15,
          ),
        ),
      ),
    );
  }
}
