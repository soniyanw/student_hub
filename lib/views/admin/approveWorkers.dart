import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:project_inc/services/services.dart';
import 'package:project_inc/view_model/changes.dart';
import 'package:project_inc/views/admin/adminNeedProjectBox.dart';
import 'package:provider/provider.dart';

class ApproveWorkers extends StatefulWidget {
  const ApproveWorkers({Key? key}) : super(key: key);

  @override
  State<ApproveWorkers> createState() => _ApproveWorkersState();
}

class _ApproveWorkersState extends State<ApproveWorkers> {
  Future<void> method() async {
    await context.read<MyModel>().getAdminNewProjectsPosts();
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
    BuiltList? list = context.read<MyModel>().state.adminNeedProjectPosts;

    return RefreshIndicator(
      color: purple,
      onRefresh: () {
        _refresh();
        return Future(() => null);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Approve Workers"),
          backgroundColor: purple,
        ),
        body: (list == null || list.isEmpty)
            ? Center(child: Text("Nothing Yet"))
            : Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: ListView.builder(
                  itemCount: list.length,
                  itemBuilder: (context, index) {
                    return AdminNeedProjectBox(
                        list[index].project,
                        list[index].user,
                        list[index].skills,
                        list[index].time,
                        list[index].usermail,
                        list[index].id,
                        list[index].approved);
                  },
                ),
              ),
      ),
    );
  }
}
