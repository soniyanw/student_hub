import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:project_inc/services/services.dart';
import 'package:project_inc/view_model/changes.dart';
import 'package:project_inc/views/admin/adminNeedWorkersBox.dart';
import 'package:provider/provider.dart';

class ApproveProjects extends StatefulWidget {
  const ApproveProjects({Key? key}) : super(key: key);

  @override
  State<ApproveProjects> createState() => _ApproveProjectsState();
}

class _ApproveProjectsState extends State<ApproveProjects> {
  Future<void> method() async {
    await context.read<MyModel>().getAdminNewWorkersPosts();
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
    BuiltList? list = context.read<MyModel>().state.adminNeedWorkerProjects;

    return RefreshIndicator(
      color: purple,
      onRefresh: () {
        _refresh();
        return Future(() => null);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Approve Projects"),
          backgroundColor: purple,
        ),
        body: (list == null || list.isEmpty)
            ? Center(child: Text("Nothing Yet"))
            : Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: ListView.builder(
                  itemCount: list.length,
                  itemBuilder: (context, index) {
                    return AdminNeedWorkerBox(
                        list[index].project,
                        list[index].user,
                        list[index].skills,
                        list[index].time,
                        list[index].usermail,
                        list[index].people,
                        list[index].id,
                        list[index].approved);
                  },
                ),
              ),
      ),
    );
  }
}
