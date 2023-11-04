import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:project_inc/models/serializers.dart';

part 'identity_docs.g.dart';

abstract class IdentityDocs
    implements Built<IdentityDocs, IdentityDocsBuilder> {
  IdentityDocs._();
  factory IdentityDocs([void Function(IdentityDocsBuilder) updates]) =
      _$IdentityDocs;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(IdentityDocs.serializer, this)
        as Map<String, dynamic>;
  }

  static IdentityDocs fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(IdentityDocs.serializer, json)!;
  }

  static Serializer<IdentityDocs> get serializer => _$identityDocsSerializer;
  String get empid;
  String get doc;
}
