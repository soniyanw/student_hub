// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedbacks.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Feedbacks> _$feedbacksSerializer = new _$FeedbacksSerializer();

class _$FeedbacksSerializer implements StructuredSerializer<Feedbacks> {
  @override
  final Iterable<Type> types = const [Feedbacks, _$Feedbacks];
  @override
  final String wireName = 'Feedbacks';

  @override
  Iterable<Object?> serialize(Serializers serializers, Feedbacks object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.feedback;
    if (value != null) {
      result
        ..add('feedback')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userid;
    if (value != null) {
      result
        ..add('userid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Feedbacks deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FeedbacksBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'feedback':
          result.feedback = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'userid':
          result.userid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Feedbacks extends Feedbacks {
  @override
  final String? feedback;
  @override
  final String? name;
  @override
  final String? userid;

  factory _$Feedbacks([void Function(FeedbacksBuilder)? updates]) =>
      (new FeedbacksBuilder()..update(updates))._build();

  _$Feedbacks._({this.feedback, this.name, this.userid}) : super._();

  @override
  Feedbacks rebuild(void Function(FeedbacksBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FeedbacksBuilder toBuilder() => new FeedbacksBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Feedbacks &&
        feedback == other.feedback &&
        name == other.name &&
        userid == other.userid;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, feedback.hashCode), name.hashCode), userid.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Feedbacks')
          ..add('feedback', feedback)
          ..add('name', name)
          ..add('userid', userid))
        .toString();
  }
}

class FeedbacksBuilder implements Builder<Feedbacks, FeedbacksBuilder> {
  _$Feedbacks? _$v;

  String? _feedback;
  String? get feedback => _$this._feedback;
  set feedback(String? feedback) => _$this._feedback = feedback;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _userid;
  String? get userid => _$this._userid;
  set userid(String? userid) => _$this._userid = userid;

  FeedbacksBuilder();

  FeedbacksBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _feedback = $v.feedback;
      _name = $v.name;
      _userid = $v.userid;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Feedbacks other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Feedbacks;
  }

  @override
  void update(void Function(FeedbacksBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Feedbacks build() => _build();

  _$Feedbacks _build() {
    final _$result = _$v ??
        new _$Feedbacks._(feedback: feedback, name: name, userid: userid);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
