import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:project_inc/models/appstate.dart';
import 'package:project_inc/models/collaborations.dart';
import 'package:project_inc/services/service_imp.dart';
import 'package:project_inc/services/services.dart';
import 'package:state_notifier/state_notifier.dart';

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

  Future<void> get_collab_list() async {
    final BuiltList<Collaborations> a = await imp.getcollaborations();
    state = state.rebuild((p0) {
      p0.collaborations = a.toBuilder();
    });
  }
}
