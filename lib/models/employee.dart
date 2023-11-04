import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:project_inc/models/address.dart';
import 'package:project_inc/models/education.dart';
import 'package:project_inc/models/emergency_contact.dart';
import 'package:project_inc/models/serializers.dart';

part 'employee.g.dart';

abstract class Employee implements Built<Employee, EmployeeBuilder> {
  Employee._();
  factory Employee([void Function(EmployeeBuilder) updates]) = _$Employee;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(Employee.serializer, this)
        as Map<String, dynamic>;
  }

  static Employee fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Employee.serializer, json)!;
  }

  static Serializer<Employee> get serializer => _$employeeSerializer;
  String get id;
  String get name;
  String get password;
  String? get mail;
  String get phoneno;
  Address? get address;
  String? get gender;
  Education? get education;
  String? get fathername;
  String? get mothername;
  DateTime? get dob;
  String? get adhar;
  EmergencyContact? get contacts;
  String? get hrid;
  // IdentityDocs get iddoc;
  // TaxDocs get taxdoc;
  // BuiltList<Certificates>? get certificates;
}
