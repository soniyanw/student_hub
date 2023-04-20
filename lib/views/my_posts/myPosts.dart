import 'package:flutter/material.dart';
import 'package:project_inc/services/services.dart';
import 'package:project_inc/views/my_posts/myNeedProjectsPage.dart';
import 'package:project_inc/views/my_posts/myNeedWorkersPage.dart';
import 'package:project_inc/views/my_posts/myQueris.dart';

class MyPosts extends StatefulWidget {
  const MyPosts({Key? key}) : super(key: key);

  @override
  State<MyPosts> createState() => _MyPostsState();
}

class _MyPostsState extends State<MyPosts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      appBar: AppBar(
        title: Text("My Posts"),
        backgroundColor: purple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyQueries()));
              },
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Text(
                  "My Queries",
                  style: TextStyle(color: purple),
                ),
              ),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyNeedProjectsPage()));
              },
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Text(
                  "My Offers to Work",
                  style: TextStyle(color: purple),
                ),
              ),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyNeedWorkersPage()));
              },
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Text(
                  "My Offers to Hire",
                  style: TextStyle(color: purple),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
