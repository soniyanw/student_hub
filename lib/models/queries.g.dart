// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'queries.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Queries> _$queriesSerializer = new _$QueriesSerializer();

class _$QueriesSerializer implements StructuredSerializer<Queries> {
  @override
  final Iterable<Type> types = const [Queries, _$Queries];
  @override
  final String wireName = 'Queries';

  @override
  Iterable<Object?> serialize(Serializers serializers, Queries object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.query;
    if (value != null) {
      result
        ..add('query')
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
    value = object.userid;
    if (value != null) {
      result
        ..add('userid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.link;
    if (value != null) {
      result
        ..add('link')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.time;
    if (value != null) {
      result
        ..add('time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Queries deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new QueriesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'query':
          result.query = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'user':
          result.user = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'userid':
          result.userid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'link':
          result.link = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Queries extends Queries {
  @override
  final String? query;
  @override
  final String? user;
  @override
  final String? userid;
  @override
  final String? id;
  @override
  final String? link;
  @override
  final String? time;

  factory _$Queries([void Function(QueriesBuilder)? updates]) =>
      (new QueriesBuilder()..update(updates))._build();

  _$Queries._(
      {this.query, this.user, this.userid, this.id, this.link, this.time})
      : super._();

  @override
  Queries rebuild(void Function(QueriesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QueriesBuilder toBuilder() => new QueriesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Queries &&
        query == other.query &&
        user == other.user &&
        userid == other.userid &&
        id == other.id &&
        link == other.link &&
        time == other.time;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, query.hashCode), user.hashCode),
                    userid.hashCode),
                id.hashCode),
            link.hashCode),
        time.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Queries')
          ..add('query', query)
          ..add('user', user)
          ..add('userid', userid)
          ..add('id', id)
          ..add('link', link)
          ..add('time', time))
        .toString();
  }
}

class QueriesBuilder implements Builder<Queries, QueriesBuilder> {
  _$Queries? _$v;

  String? _query;
  String? get query => _$this._query;
  set query(String? query) => _$this._query = query;

  String? _user;
  String? get user => _$this._user;
  set user(String? user) => _$this._user = user;

  String? _userid;
  String? get userid => _$this._userid;
  set userid(String? userid) => _$this._userid = userid;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _link;
  String? get link => _$this._link;
  set link(String? link) => _$this._link = link;

  String? _time;
  String? get time => _$this._time;
  set time(String? time) => _$this._time = time;

  QueriesBuilder();

  QueriesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _query = $v.query;
      _user = $v.user;
      _userid = $v.userid;
      _id = $v.id;
      _link = $v.link;
      _time = $v.time;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Queries other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Queries;
  }

  @override
  void update(void Function(QueriesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Queries build() => _build();

  _$Queries _build() {
    final _$result = _$v ??
        new _$Queries._(
            query: query,
            user: user,
            userid: userid,
            id: id,
            link: link,
            time: time);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
