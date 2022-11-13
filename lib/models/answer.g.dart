// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answer.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Answer> _$answerSerializer = new _$AnswerSerializer();

class _$AnswerSerializer implements StructuredSerializer<Answer> {
  @override
  final Iterable<Type> types = const [Answer, _$Answer];
  @override
  final String wireName = 'Answer';

  @override
  Iterable<Object?> serialize(Serializers serializers, Answer object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.answer;
    if (value != null) {
      result
        ..add('answer')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.queryid;
    if (value != null) {
      result
        ..add('queryid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Answer deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AnswerBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'answer':
          result.answer = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'queryid':
          result.queryid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'user':
          result.user = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Answer extends Answer {
  @override
  final String? answer;
  @override
  final String? queryid;
  @override
  final String? user;

  factory _$Answer([void Function(AnswerBuilder)? updates]) =>
      (new AnswerBuilder()..update(updates))._build();

  _$Answer._({this.answer, this.queryid, this.user}) : super._();

  @override
  Answer rebuild(void Function(AnswerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnswerBuilder toBuilder() => new AnswerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Answer &&
        answer == other.answer &&
        queryid == other.queryid &&
        user == other.user;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, answer.hashCode), queryid.hashCode), user.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Answer')
          ..add('answer', answer)
          ..add('queryid', queryid)
          ..add('user', user))
        .toString();
  }
}

class AnswerBuilder implements Builder<Answer, AnswerBuilder> {
  _$Answer? _$v;

  String? _answer;
  String? get answer => _$this._answer;
  set answer(String? answer) => _$this._answer = answer;

  String? _queryid;
  String? get queryid => _$this._queryid;
  set queryid(String? queryid) => _$this._queryid = queryid;

  String? _user;
  String? get user => _$this._user;
  set user(String? user) => _$this._user = user;

  AnswerBuilder();

  AnswerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _answer = $v.answer;
      _queryid = $v.queryid;
      _user = $v.user;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Answer other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Answer;
  }

  @override
  void update(void Function(AnswerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Answer build() => _build();

  _$Answer _build() {
    final _$result =
        _$v ?? new _$Answer._(answer: answer, queryid: queryid, user: user);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
