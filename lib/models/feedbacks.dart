import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:project_inc/models/serializers.dart';

part 'feedbacks.g.dart';

abstract class Feedbacks implements Built<Feedbacks, FeedbacksBuilder> {
  Feedbacks._();
  factory Feedbacks([void Function(FeedbacksBuilder) updates]) = _$Feedbacks;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(Feedbacks.serializer, this)
        as Map<String, dynamic>;
  }

  static Feedbacks fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Feedbacks.serializer, json)!;
  }

  static Serializer<Feedbacks> get serializer => _$feedbacksSerializer;
  String? get feedback;
  String? get name;
  String? get userid;
}
