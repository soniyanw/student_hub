import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:project_inc/models/serializers.dart';

part 'education.g.dart';

abstract class Education implements Built<Education, EducationBuilder> {
  Education._();
  factory Education([void Function(EducationBuilder) updates]) = _$Education;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(Education.serializer, this)
        as Map<String, dynamic>;
  }

  static Education fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Education.serializer, json)!;
  }

  static Serializer<Education> get serializer => _$educationSerializer;
  String get qualification;
  double get percent;
}
