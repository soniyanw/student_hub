import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:project_inc/services/services.dart';
import 'package:project_inc/view_model/changes.dart';
import 'package:project_inc/views/new_query.dart';
import 'package:project_inc/views/query_box.dart';
import 'package:provider/provider.dart';

class Query extends StatefulWidget {
  const Query({Key? key}) : super(key: key);

  @override
  State<Query> createState() => _QueryState();
}

class _QueryState extends State<Query> {
  Future<void> method() async {
    await context.read<MyModel>().get_query_list();
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
    BuiltList? list = context.read<MyModel>().state.queries;

    return Scaffold(
      body: (list == null)
          ? Center(child: Text("Nothing Yet"))
          : Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: ListView.builder(
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return QueryBox(list[index].query, list[index].user,
                      list[index].id, list[index].link, list[index].time);
                },
              ),
            ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        width: double.infinity,
        color: purple,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(40, 20, 40, 0),
          child: MaterialButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => NewQuery()));
            },
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "New Query",
                style: TextStyle(color: purple),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
