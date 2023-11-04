import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:project_inc/models/serializers.dart';

part 'tax_docs.g.dart';

abstract class TaxDocs implements Built<TaxDocs, TaxDocsBuilder> {
  TaxDocs._();
  factory TaxDocs([void Function(TaxDocsBuilder) updates]) = _$TaxDocs;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(TaxDocs.serializer, this)
        as Map<String, dynamic>;
  }

  static TaxDocs fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(TaxDocs.serializer, json)!;
  }

  static Serializer<TaxDocs> get serializer => _$taxDocsSerializer;
  String get userid;
  String get doc;
}
