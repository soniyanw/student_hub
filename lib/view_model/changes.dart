import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:project_inc/models/answer.dart';
import 'package:project_inc/models/appstate.dart';
import 'package:project_inc/models/collaborationProjects.dart';
import 'package:project_inc/models/collaborations.dart';
import 'package:project_inc/models/queries.dart';
import 'package:project_inc/services/service_imp.dart';
import 'package:project_inc/services/services.dart';
import 'package:state_notifier/state_notifier.dart';

import '../models/feedbacks.dart';

class Changes extends StatelessWidget {
  const Changes({Key? key, required this.child}) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<MyModel, Appstate>(
      create: (c) => MyModel(),
      child: child,
    );
  }
}

class MyModel extends StateNotifier<Appstate> with LocatorMixin {
  MyModel() : super(Appstate());
  Services imp = new ServiceImp();
  void assignDescrip(String val) {
    state = state.rebuild((p0) => p0.descrip = val);
  }

  Future<void> getdetails() async {
    String name = await imp.getcurrentuser_name();
    String id = await imp.getcurrentuser_id();
    String mail = await imp.getcurrentuser_mail();
    state = state.rebuild((p0) => p0.name = name);
    state = state.rebuild((p0) => p0.mail = mail);
    state = state.rebuild((p0) => p0.id = id);
  }

  Future<void> getNeedProjectsPosts() async {
    final BuiltList<CollaborationProjects> a = await imp.getNeedProjectPosts();
    state = state.rebuild((p0) {
      p0.needProjects = a.toBuilder();
    });
  }

  Future<void> getNeedWorkersPosts() async {
    final BuiltList<Collaborations> a = await imp.getNeedWorkersPosts();
    state = state.rebuild((p0) {
      p0.needworkers = a.toBuilder();
    });
  }

  Future<void> getMyNewProjectsPosts() async {
    final BuiltList<CollaborationProjects> a =
        await imp.getMyNewProjectsPosts();
    state = state.rebuild((p0) {
      p0.myNeedProjectPosts = a.toBuilder();
    });
  }

  Future<void> getMyNewWorkersPosts() async {
    final BuiltList<Collaborations> a = await imp.getMyNewWorkersPosts();
    state = state.rebuild((p0) {
      p0.myNeedWorkerProjects = a.toBuilder();
    });
  }

  Future<void> getAdminNewProjectsPosts() async {
    final BuiltList<CollaborationProjects> a =
        await imp.getAdminNewProjectsPosts();
    state = state.rebuild((p0) {
      p0.adminNeedProjectPosts = a.toBuilder();
    });
  }

  Future<void> getAdminNewWorkersPosts() async {
    final BuiltList<Collaborations> a = await imp.getAdminNewWorkersPosts();
    state = state.rebuild((p0) {
      p0.adminNeedWorkerProjects = a.toBuilder();
    });
  }

  Future<void> getMyQueries() async {
    final BuiltList<Queries> a = await imp.getMyQueries();
    state = state.rebuild((p0) {
      p0.myQueries = a.toBuilder();
    });
  }

  Future<void> get_query_list() async {
    final BuiltList<Queries> a = await imp.getqueries();
    state = state.rebuild((p0) {
      p0.queries = a.toBuilder();
    });
  }

  Future<void> get_ans_list(String queryid) async {
    final BuiltList<Answer> a = await imp.getanswers(queryid);
    state = state.rebuild((p0) {
      p0.answers = a.toBuilder();
    });
  }

  Future<void> get_feedbacks() async {
    final BuiltList<Feedbacks> a = await imp.getFeedbacks();
    state = state.rebuild((p0) {
      p0.feedbacks = a.toBuilder();
    });
  }
}
