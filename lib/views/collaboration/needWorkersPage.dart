import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:project_inc/services/services.dart';
import 'package:project_inc/view_model/changes.dart';
import 'package:project_inc/views/collaboration/needWorkerBox.dart';
import 'package:project_inc/views/collaboration/newNeedWorker.dart';
import 'package:provider/provider.dart';

class NeedWorkersPage extends StatefulWidget {
  const NeedWorkersPage({Key? key}) : super(key: key);

  @override
  State<NeedWorkersPage> createState() => _NeedWorkersPageState();
}

class _NeedWorkersPageState extends State<NeedWorkersPage> {
  Future<void> method() async {
    await context.read<MyModel>().getNeedWorkersPosts();
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
    BuiltList? list = context.read<MyModel>().state.needworkers;

    return RefreshIndicator(
      color: purple,
      onRefresh: () {
        _refresh();
        return Future(() => null);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Find Projects"),
          backgroundColor: purple,
        ),
        body: (list == null || list.isEmpty)
            ? Center(child: Text("Nothing Yet"))
            : Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: ListView.builder(
                  itemCount: list.length,
                  itemBuilder: (context, index) {
                    return NeedWorkerBox(
                        list[index].project,
                        list[index].user,
                        list[index].skills,
                        list[index].time,
                        list[index].usermail,
                        list[index].people);
                  },
                ),
              ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Container(
          color: purple,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 8),
            child: MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => NewNeedWorker()));
              },
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Text(
                  "Need Colleague",
                  style: TextStyle(color: purple),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
