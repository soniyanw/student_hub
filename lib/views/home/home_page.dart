import 'package:flutter/material.dart';
import 'package:project_inc/services/service_imp.dart';
import 'package:project_inc/services/services.dart';
import 'package:project_inc/views/home/menu.dart';
import 'package:project_inc/views/queries/queries_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  final upperTab = const TabBar(
    tabs: <Tab>[
      Tab(
        text: "Query",
      ),
      Tab(text: "Collaboration"),
    ],
  );
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              title: Text("Student-Hub"),
              backgroundColor: purple,
              actions: [
                Menu(),
                SizedBox(
                  width: 20,
                )
              ],
            ),
            body: TabBarView(
              children: [
                Query(),
              ],
            )));
  }
}

class Logged extends StatefulWidget {
  const Logged({Key? key}) : super(key: key);

  @override
  _LoggedState createState() => _LoggedState();
}

class _LoggedState extends State<Logged> {
  // int _selectedIndex = 0;
  // static const List<Widget> _widgetOptions = <Widget>[Query(), Collaborate()];
  //
  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  Services imp = new ServiceImp();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Student-Hub Queries"),
        backgroundColor: purple,
        actions: [
          Menu(),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Center(child: Query()
          //_widgetOptions.elementAt(_selectedIndex),
          ),
      // bottomNavigationBar: Theme(
      //   data: Theme.of(context).copyWith(
      //     canvasColor: purple,
      //   ), // sets the inactive color of the `BottomNavigationBar`
      //   child: BottomNavigationBar(
      //       backgroundColor: Colors.purple[900],
      //       items: const <BottomNavigationBarItem>[
      //         BottomNavigationBarItem(
      //           icon: Icon(Icons.question_answer_outlined),
      //           label: "Query",
      //         ),
      //         BottomNavigationBarItem(
      //           icon: Icon(Icons.people_outline_rounded),
      //           label: "Collaborate",
      //         ),
      //       ],
      //       type: BottomNavigationBarType.shifting,
      //       currentIndex: _selectedIndex,
      //       selectedItemColor: Colors.white,
      //       unselectedItemColor: Colors.white60,
      //       iconSize: 30,
      //       onTap: _onItemTapped,
      //       elevation: 5),
      // )
    );
  }
}
