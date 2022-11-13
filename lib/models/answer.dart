import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:project_inc/models/serializers.dart';

part 'answer.g.dart';

abstract class Answer implements Built<Answer, AnswerBuilder> {
  Answer._();
  factory Answer([void Function(AnswerBuilder) updates]) = _$Answer;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(Answer.serializer, this)
        as Map<String, dynamic>;
  }

  static Answer fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Answer.serializer, json)!;
  }

  static Serializer<Answer> get serializer => _$answerSerializer;
  String? get answer;
  String? get queryid;
  String? get user;
}
