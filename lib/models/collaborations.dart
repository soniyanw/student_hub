import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:project_inc/models/serializers.dart';

part 'collaborations.g.dart';

abstract class Collaborations
    implements Built<Collaborations, CollaborationsBuilder> {
  Collaborations._();
  factory Collaborations([void Function(CollaborationsBuilder) updates]) =
      _$Collaborations;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(Collaborations.serializer, this)
        as Map<String, dynamic>;
  }

  static Collaborations fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Collaborations.serializer, json)!;
  }

  static Serializer<Collaborations> get serializer =>
      _$collaborationsSerializer;
  String? get project;
  String? get skills;
  String? get user;
  bool? get offer;
  String? get time;
  String? get usermail;
}
