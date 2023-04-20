import 'package:flutter/material.dart';
import 'package:project_inc/services/services.dart';
import 'package:project_inc/views/admin/approveProjects.dart';
import 'package:project_inc/views/admin/approveWorkers.dart';
import 'package:project_inc/views/auth/login_page.dart';

class AdminMenu extends StatelessWidget {
  const AdminMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void handleClick(int item) {
      switch (item) {
        case 1:
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ApproveWorkers()),
          );
          break;

        case 2:
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ApproveProjects()),
          );
          break;
        case 3:
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => Login()),
            (Route<dynamic> route) => false,
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
                            Icons.people,
                            color: purple,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Approve Workers',
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
                  value: 2,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.work,
                            color: purple,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Approved Projects',
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
                  value: 3,
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
                            'Logout',
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
