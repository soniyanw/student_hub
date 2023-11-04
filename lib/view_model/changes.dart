import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:project_inc/models/appstate.dart';
import 'package:project_inc/models/employee.dart';
import 'package:project_inc/models/hr.dart';
import 'package:project_inc/services/service_imp.dart';

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
  ServiceImp imp = new ServiceImp();

  Future<void> getEmpList() async {
    BuiltList<Employee> emps = await imp.getEmpList();
    state = state.rebuild((p0) => p0.employees = emps.toBuilder());
  }

  Future<void> getTotalEmplist() async {
    BuiltList<Employee> emps = await imp.getTotalEmpList();
    state = state.rebuild((p0) => p0.employees = emps.toBuilder());
  }

  Future<void> getHrlist() async {
    BuiltList<Hr> emps = await imp.getHrs();
    state = state.rebuild((p0) => p0.hrs = emps.toBuilder());
  }

  Future<void> getEmp() async {
    Employee emps = await imp.getEmpDetails();
    state = state.rebuild((p0) => p0.emp = emps.toBuilder());
  }

  Future<void> getHr() async {
    Hr hrs = await imp.getHrDetails();
    state = state.rebuild((p0) => p0.hr = hrs.toBuilder());
  }
}
