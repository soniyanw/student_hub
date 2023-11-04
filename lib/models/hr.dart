import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:project_inc/models/serializers.dart';

part 'hr.g.dart';

abstract class Hr implements Built<Hr, HrBuilder> {
  Hr._();
  factory Hr([void Function(HrBuilder) updates]) = _$Hr;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(Hr.serializer, this)
        as Map<String, dynamic>;
  }

  static Hr fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Hr.serializer, json)!;
  }

  static Serializer<Hr> get serializer => _$hrSerializer;
  String get id;
  String get password;
  String get name;
  String get phoneno;
}
