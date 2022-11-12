import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:project_inc/models/collaborations.dart';
import 'package:project_inc/models/serializers.dart';

part 'appstate.g.dart';

abstract class Appstate implements Built<Appstate, AppstateBuilder> {
  Appstate._();
  factory Appstate([void Function(AppstateBuilder) updates]) = _$Appstate;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(Appstate.serializer, this)
        as Map<String, dynamic>;
  }

  static Appstate fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Appstate.serializer, json)!;
  }

  static Serializer<Appstate> get serializer => _$appstateSerializer;
  String? get descrip;
  String? get name;
  String? get id;
  String? get mail;
  BuiltList<Collaborations>? get collaborations;
}
