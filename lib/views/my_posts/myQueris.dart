import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:project_inc/services/services.dart';
import 'package:project_inc/view_model/changes.dart';
import 'package:project_inc/views/queries/query_box.dart';
import 'package:provider/provider.dart';

class MyQueries extends StatefulWidget {
  const MyQueries({Key? key}) : super(key: key);

  @override
  State<MyQueries> createState() => _MyQueriesState();
}

class _MyQueriesState extends State<MyQueries> {
  Future<void> method() async {
    await context.read<MyModel>().getMyQueries();
    setState(() {});
  }

  void _refresh() {
    setState(() {});
    return null;
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
    BuiltList? list = context.read<MyModel>().state.myQueries;

    return RefreshIndicator(
      onRefresh: () {
        _refresh();
        return Future(() => null);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("My Queries"),
          backgroundColor: purple,
        ),
        body: (list == null || list.isEmpty)
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
      ),
    );
  }
}
