import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:project_inc/services/services.dart';
import 'package:project_inc/view_model/changes.dart';
import 'package:project_inc/views/collaboration/collaboration_box.dart';
import 'package:project_inc/views/collaboration/new_hire_page.dart';
import 'package:project_inc/views/collaboration/new_offer_page.dart';
import 'package:provider/provider.dart';

class Collaborate extends StatefulWidget {
  const Collaborate({Key? key}) : super(key: key);

  @override
  State<Collaborate> createState() => _CollaborateState();
}

class _CollaborateState extends State<Collaborate> {
  Future<void> method() async {
    await context.read<MyModel>().get_collab_list();
    setState(() {});
  }

  @override
  void initState() {
    method();
    setState(() {});
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    BuiltList? list = context.read<MyModel>().state.collaborations;

    return Scaffold(
      appBar: AppBar(
        title: Text("Collaborations"),
        backgroundColor: purple,
      ),
      body: (list == null)
          ? Center(child: Text("Nothing Yet"))
          : Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: ListView.builder(
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return CollabBox(
                      list[index].project,
                      list[index].user,
                      list[index].skills,
                      list[index].offer,
                      list[index].time,
                      list[index].usermail);
                },
              ),
            ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        color: purple,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MaterialButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NeedColleague()));
                },
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Need Colleague",
                    style: TextStyle(color: purple),
                  ),
                ),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NeedProject()));
                },
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Need Project",
                    style: TextStyle(color: purple),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
