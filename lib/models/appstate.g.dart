// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appstate.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Appstate> _$appstateSerializer = new _$AppstateSerializer();

class _$AppstateSerializer implements StructuredSerializer<Appstate> {
  @override
  final Iterable<Type> types = const [Appstate, _$Appstate];
  @override
  final String wireName = 'Appstate';

  @override
  Iterable<Object?> serialize(Serializers serializers, Appstate object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.descrip;
    if (value != null) {
      result
        ..add('descrip')
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
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.mail;
    if (value != null) {
      result
        ..add('mail')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.collaborations;
    if (value != null) {
      result
        ..add('collaborations')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(Collaborations)])));
    }
    return result;
  }

  @override
  Appstate deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppstateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'descrip':
          result.descrip = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'mail':
          result.mail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'collaborations':
          result.collaborations.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Collaborations)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Appstate extends Appstate {
  @override
  final String? descrip;
  @override
  final String? name;
  @override
  final String? id;
  @override
  final String? mail;
  @override
  final BuiltList<Collaborations>? collaborations;

  factory _$Appstate([void Function(AppstateBuilder)? updates]) =>
      (new AppstateBuilder()..update(updates))._build();

  _$Appstate._(
      {this.descrip, this.name, this.id, this.mail, this.collaborations})
      : super._();

  @override
  Appstate rebuild(void Function(AppstateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppstateBuilder toBuilder() => new AppstateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Appstate &&
        descrip == other.descrip &&
        name == other.name &&
        id == other.id &&
        mail == other.mail &&
        collaborations == other.collaborations;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, descrip.hashCode), name.hashCode), id.hashCode),
            mail.hashCode),
        collaborations.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Appstate')
          ..add('descrip', descrip)
          ..add('name', name)
          ..add('id', id)
          ..add('mail', mail)
          ..add('collaborations', collaborations))
        .toString();
  }
}

class AppstateBuilder implements Builder<Appstate, AppstateBuilder> {
  _$Appstate? _$v;

  String? _descrip;
  String? get descrip => _$this._descrip;
  set descrip(String? descrip) => _$this._descrip = descrip;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _mail;
  String? get mail => _$this._mail;
  set mail(String? mail) => _$this._mail = mail;

  ListBuilder<Collaborations>? _collaborations;
  ListBuilder<Collaborations> get collaborations =>
      _$this._collaborations ??= new ListBuilder<Collaborations>();
  set collaborations(ListBuilder<Collaborations>? collaborations) =>
      _$this._collaborations = collaborations;

  AppstateBuilder();

  AppstateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _descrip = $v.descrip;
      _name = $v.name;
      _id = $v.id;
      _mail = $v.mail;
      _collaborations = $v.collaborations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Appstate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Appstate;
  }

  @override
  void update(void Function(AppstateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Appstate build() => _build();

  _$Appstate _build() {
    _$Appstate _$result;
    try {
      _$result = _$v ??
          new _$Appstate._(
              descrip: descrip,
              name: name,
              id: id,
              mail: mail,
              collaborations: _collaborations?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'collaborations';
        _collaborations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Appstate', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
