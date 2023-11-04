import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:project_inc/models/address.dart';
import 'package:project_inc/models/appstate.dart';
import 'package:project_inc/models/certificates.dart';
import 'package:project_inc/models/education.dart';
import 'package:project_inc/models/emergency_contact.dart';
import 'package:project_inc/models/employee.dart';
import 'package:project_inc/models/hr.dart';
import 'package:project_inc/models/identity_docs.dart';
import 'package:project_inc/models/tax_docs.dart';

part 'serializers.g.dart';

@SerializersFor([
  // TODO: add the built values that require serialization
  Address, Appstate, Certificates, Education, EmergencyContact, Employee, Hr,
  IdentityDocs, TaxDocs
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
