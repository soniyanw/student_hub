// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Address> _$addressSerializer = new _$AddressSerializer();

class _$AddressSerializer implements StructuredSerializer<Address> {
  @override
  final Iterable<Type> types = const [Address, _$Address];
  @override
  final String wireName = 'Address';

  @override
  Iterable<Object?> serialize(Serializers serializers, Address object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'street',
      serializers.serialize(object.street,
          specifiedType: const FullType(String)),
      'doorno',
      serializers.serialize(object.doorno,
          specifiedType: const FullType(String)),
      'city',
      serializers.serialize(object.city, specifiedType: const FullType(String)),
      'state',
      serializers.serialize(object.state,
          specifiedType: const FullType(String)),
      'pincode',
      serializers.serialize(object.pincode, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  Address deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AddressBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'street':
          result.street = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'doorno':
          result.doorno = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'state':
          result.state = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'pincode':
          result.pincode = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Address extends Address {
  @override
  final String street;
  @override
  final String doorno;
  @override
  final String city;
  @override
  final String state;
  @override
  final int pincode;

  factory _$Address([void Function(AddressBuilder)? updates]) =>
      (new AddressBuilder()..update(updates))._build();

  _$Address._(
      {required this.street,
      required this.doorno,
      required this.city,
      required this.state,
      required this.pincode})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(street, r'Address', 'street');
    BuiltValueNullFieldError.checkNotNull(doorno, r'Address', 'doorno');
    BuiltValueNullFieldError.checkNotNull(city, r'Address', 'city');
    BuiltValueNullFieldError.checkNotNull(state, r'Address', 'state');
    BuiltValueNullFieldError.checkNotNull(pincode, r'Address', 'pincode');
  }

  @override
  Address rebuild(void Function(AddressBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddressBuilder toBuilder() => new AddressBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Address &&
        street == other.street &&
        doorno == other.doorno &&
        city == other.city &&
        state == other.state &&
        pincode == other.pincode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, street.hashCode);
    _$hash = $jc(_$hash, doorno.hashCode);
    _$hash = $jc(_$hash, city.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, pincode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Address')
          ..add('street', street)
          ..add('doorno', doorno)
          ..add('city', city)
          ..add('state', state)
          ..add('pincode', pincode))
        .toString();
  }
}

class AddressBuilder implements Builder<Address, AddressBuilder> {
  _$Address? _$v;

  String? _street;
  String? get street => _$this._street;
  set street(String? street) => _$this._street = street;

  String? _doorno;
  String? get doorno => _$this._doorno;
  set doorno(String? doorno) => _$this._doorno = doorno;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  String? _state;
  String? get state => _$this._state;
  set state(String? state) => _$this._state = state;

  int? _pincode;
  int? get pincode => _$this._pincode;
  set pincode(int? pincode) => _$this._pincode = pincode;

  AddressBuilder();

  AddressBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _street = $v.street;
      _doorno = $v.doorno;
      _city = $v.city;
      _state = $v.state;
      _pincode = $v.pincode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Address other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Address;
  }

  @override
  void update(void Function(AddressBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Address build() => _build();

  _$Address _build() {
    final _$result = _$v ??
        new _$Address._(
            street: BuiltValueNullFieldError.checkNotNull(
                street, r'Address', 'street'),
            doorno: BuiltValueNullFieldError.checkNotNull(
                doorno, r'Address', 'doorno'),
            city:
                BuiltValueNullFieldError.checkNotNull(city, r'Address', 'city'),
            state: BuiltValueNullFieldError.checkNotNull(
                state, r'Address', 'state'),
            pincode: BuiltValueNullFieldError.checkNotNull(
                pincode, r'Address', 'pincode'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
