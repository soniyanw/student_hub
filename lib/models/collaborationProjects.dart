import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:project_inc/models/serializers.dart';

part 'collaborationProjects.g.dart';

abstract class CollaborationProjects
    implements Built<CollaborationProjects, CollaborationProjectsBuilder> {
  CollaborationProjects._();
  factory CollaborationProjects(
          [void Function(CollaborationProjectsBuilder) updates]) =
      _$CollaborationProjects;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(CollaborationProjects.serializer, this)
        as Map<String, dynamic>;
  }

  static CollaborationProjects fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(CollaborationProjects.serializer, json)!;
  }

  static Serializer<CollaborationProjects> get serializer =>
      _$collaborationProjectsSerializer;
  String? get project;
  String? get skills;
  String? get user;
  String? get time;
  String? get usermail;
  String? get userid;
  String? get id;
  bool? get approved;
}
