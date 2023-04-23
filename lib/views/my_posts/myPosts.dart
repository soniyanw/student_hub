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
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyQueries()));
              },
              child: Container(
                height: 40,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Center(child: Text("My Queries")),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyQueries()));
              },
              child: Container(
                height: 100,
                width: 300,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      'https://crosstalk.cell.com/hs-fs/hubfs/Images/Alex%20Lenkei/An%20authors%20guide%20to%20copyediting%20queries/query-letter-featured.jpg?width=1000&name=query-letter-featured.jpg'),
                )),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyNeedProjectsPage()));
              },
              child: Container(
                height: 40,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Center(child: Text("My Offers to Work")),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyNeedProjectsPage()));
              },
              child: Container(
                height: 100,
                width: 300,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      'https://s3-ap-south-1.amazonaws.com/static.awfis.com/wp-content/uploads/2017/07/07184649/ProjectManagement.jpg'),
                )),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyNeedWorkersPage()));
              },
              child: Container(
                height: 40,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Center(child: Text("My Offers to Hire")),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyNeedWorkersPage()));
              },
              child: Container(
                height: 100,
                width: 300,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      'https://resources.workable.com/wp-content/uploads/2019/12/how_to_hire_in_construction.png'),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
