import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:project_inc/models/serializers.dart';

part 'emergency_contact.g.dart';

abstract class EmergencyContact
    implements Built<EmergencyContact, EmergencyContactBuilder> {
  EmergencyContact._();
  factory EmergencyContact([void Function(EmergencyContactBuilder) updates]) =
      _$EmergencyContact;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(EmergencyContact.serializer, this)
        as Map<String, dynamic>;
  }

  static EmergencyContact fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(EmergencyContact.serializer, json)!;
  }

  static Serializer<EmergencyContact> get serializer =>
      _$emergencyContactSerializer;
  String get name;
  String get phoneno;
  String? get relation;
}
