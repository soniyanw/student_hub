// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hr.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Hr> _$hrSerializer = new _$HrSerializer();

class _$HrSerializer implements StructuredSerializer<Hr> {
  @override
  final Iterable<Type> types = const [Hr, _$Hr];
  @override
  final String wireName = 'Hr';

  @override
  Iterable<Object?> serialize(Serializers serializers, Hr object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'password',
      serializers.serialize(object.password,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'phoneno',
      serializers.serialize(object.phoneno,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Hr deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HrBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'phoneno':
          result.phoneno = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Hr extends Hr {
  @override
  final String id;
  @override
  final String password;
  @override
  final String name;
  @override
  final String phoneno;

  factory _$Hr([void Function(HrBuilder)? updates]) =>
      (new HrBuilder()..update(updates))._build();

  _$Hr._(
      {required this.id,
      required this.password,
      required this.name,
      required this.phoneno})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'Hr', 'id');
    BuiltValueNullFieldError.checkNotNull(password, r'Hr', 'password');
    BuiltValueNullFieldError.checkNotNull(name, r'Hr', 'name');
    BuiltValueNullFieldError.checkNotNull(phoneno, r'Hr', 'phoneno');
  }

  @override
  Hr rebuild(void Function(HrBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HrBuilder toBuilder() => new HrBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Hr &&
        id == other.id &&
        password == other.password &&
        name == other.name &&
        phoneno == other.phoneno;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, phoneno.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Hr')
          ..add('id', id)
          ..add('password', password)
          ..add('name', name)
          ..add('phoneno', phoneno))
        .toString();
  }
}

class HrBuilder implements Builder<Hr, HrBuilder> {
  _$Hr? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _phoneno;
  String? get phoneno => _$this._phoneno;
  set phoneno(String? phoneno) => _$this._phoneno = phoneno;

  HrBuilder();

  HrBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _password = $v.password;
      _name = $v.name;
      _phoneno = $v.phoneno;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Hr other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Hr;
  }

  @override
  void update(void Function(HrBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Hr build() => _build();

  _$Hr _build() {
    final _$result = _$v ??
        new _$Hr._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'Hr', 'id'),
            password: BuiltValueNullFieldError.checkNotNull(
                password, r'Hr', 'password'),
            name: BuiltValueNullFieldError.checkNotNull(name, r'Hr', 'name'),
            phoneno: BuiltValueNullFieldError.checkNotNull(
                phoneno, r'Hr', 'phoneno'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
