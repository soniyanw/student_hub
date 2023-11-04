import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:project_inc/models/appstate.dart';
import 'package:project_inc/services/service_imp.dart';
import 'package:project_inc/services/services.dart';

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
//   void assignDescrip(String val) {
//     state = state.rebuild((p0) => p0.descrip = val);
//   }
//
//   Future<void> getdetails() async {
//     String name = await imp.getcurrentuser_name();
//     state = state.rebuild((p0) => p0.name = name);
//   }
//
//   Future<void> getNeedProjectsPosts() async {
//     final BuiltList<CollaborationProjects> a = await imp.getNeedProjectPosts();
//     state = state.rebuild((p0) {
//       p0.needProjects = a.toBuilder();
//     });
//   }
//
}
