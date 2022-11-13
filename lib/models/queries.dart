import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:project_inc/models/serializers.dart';

part 'queries.g.dart';

abstract class Queries implements Built<Queries, QueriesBuilder> {
  Queries._();
  factory Queries([void Function(QueriesBuilder) updates]) = _$Queries;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(Queries.serializer, this)
        as Map<String, dynamic>;
  }

  static Queries fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Queries.serializer, json)!;
  }

  static Serializer<Queries> get serializer => _$queriesSerializer;
  String? get query;
  String? get user;
  String? get userid;
  String? get id;
  String? get link;
  String? get time;
}
