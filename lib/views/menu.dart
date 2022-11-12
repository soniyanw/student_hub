import 'package:flutter/material.dart';
import 'package:project_inc/services/services.dart';
import 'package:project_inc/views/feedback.dart';
import 'package:project_inc/views/login_page.dart';
import 'package:project_inc/views/profile.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void handleClick(int item) {
      switch (item) {
        case 1:
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Profile()),
          );
          break;
        case 4:
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const FeedBack()),
          );
          break;
        case 5:
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Login()),
          );
          break;
      }
    }

    return PopupMenuButton<int>(
        child: Icon(Icons.menu),
        onSelected: (item) => handleClick(item),
        itemBuilder: (context) => [
              PopupMenuItem<int>(
                  value: 1,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.person_pin,
                            color: purple,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Profile',
                            style: styling,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(
                        color: purple,
                      )
                    ],
                  )),
              PopupMenuItem<int>(
                  value: 4,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.note_alt,
                            color: purple,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Feedback',
                            style: styling,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(
                        color: purple,
                      )
                    ],
                  )),
              PopupMenuItem<int>(
                  value: 5,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.logout,
                            color: purple,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'LogOut',
                            style: styling,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  )),
            ]);
  }
}
