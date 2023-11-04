// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emergency_contact.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EmergencyContact> _$emergencyContactSerializer =
    new _$EmergencyContactSerializer();

class _$EmergencyContactSerializer
    implements StructuredSerializer<EmergencyContact> {
  @override
  final Iterable<Type> types = const [EmergencyContact, _$EmergencyContact];
  @override
  final String wireName = 'EmergencyContact';

  @override
  Iterable<Object?> serialize(Serializers serializers, EmergencyContact object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'phoneno',
      serializers.serialize(object.phoneno,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.relation;
    if (value != null) {
      result
        ..add('relation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  EmergencyContact deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EmergencyContactBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'phoneno':
          result.phoneno = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'relation':
          result.relation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$EmergencyContact extends EmergencyContact {
  @override
  final String name;
  @override
  final String phoneno;
  @override
  final String? relation;

  factory _$EmergencyContact(
          [void Function(EmergencyContactBuilder)? updates]) =>
      (new EmergencyContactBuilder()..update(updates))._build();

  _$EmergencyContact._(
      {required this.name, required this.phoneno, this.relation})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'EmergencyContact', 'name');
    BuiltValueNullFieldError.checkNotNull(
        phoneno, r'EmergencyContact', 'phoneno');
  }

  @override
  EmergencyContact rebuild(void Function(EmergencyContactBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EmergencyContactBuilder toBuilder() =>
      new EmergencyContactBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EmergencyContact &&
        name == other.name &&
        phoneno == other.phoneno &&
        relation == other.relation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, phoneno.hashCode);
    _$hash = $jc(_$hash, relation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EmergencyContact')
          ..add('name', name)
          ..add('phoneno', phoneno)
          ..add('relation', relation))
        .toString();
  }
}

class EmergencyContactBuilder
    implements Builder<EmergencyContact, EmergencyContactBuilder> {
  _$EmergencyContact? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _phoneno;
  String? get phoneno => _$this._phoneno;
  set phoneno(String? phoneno) => _$this._phoneno = phoneno;

  String? _relation;
  String? get relation => _$this._relation;
  set relation(String? relation) => _$this._relation = relation;

  EmergencyContactBuilder();

  EmergencyContactBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _phoneno = $v.phoneno;
      _relation = $v.relation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EmergencyContact other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EmergencyContact;
  }

  @override
  void update(void Function(EmergencyContactBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EmergencyContact build() => _build();

  _$EmergencyContact _build() {
    final _$result = _$v ??
        new _$EmergencyContact._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'EmergencyContact', 'name'),
            phoneno: BuiltValueNullFieldError.checkNotNull(
                phoneno, r'EmergencyContact', 'phoneno'),
            relation: relation);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
