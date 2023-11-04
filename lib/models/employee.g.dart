// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Employee> _$employeeSerializer = new _$EmployeeSerializer();

class _$EmployeeSerializer implements StructuredSerializer<Employee> {
  @override
  final Iterable<Type> types = const [Employee, _$Employee];
  @override
  final String wireName = 'Employee';

  @override
  Iterable<Object?> serialize(Serializers serializers, Employee object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'password',
      serializers.serialize(object.password,
          specifiedType: const FullType(String)),
      'phoneno',
      serializers.serialize(object.phoneno,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.mail;
    if (value != null) {
      result
        ..add('mail')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.address;
    if (value != null) {
      result
        ..add('address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Address)));
    }
    value = object.gender;
    if (value != null) {
      result
        ..add('gender')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.education;
    if (value != null) {
      result
        ..add('education')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Education)));
    }
    value = object.fathername;
    if (value != null) {
      result
        ..add('fathername')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.mothername;
    if (value != null) {
      result
        ..add('mothername')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dob;
    if (value != null) {
      result
        ..add('dob')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.adhar;
    if (value != null) {
      result
        ..add('adhar')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.contacts;
    if (value != null) {
      result
        ..add('contacts')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                List, const [const FullType(EmergencyContact)])));
    }
    value = object.hrid;
    if (value != null) {
      result
        ..add('hrid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Employee deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EmployeeBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'mail':
          result.mail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phoneno':
          result.phoneno = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'address':
          result.address.replace(serializers.deserialize(value,
              specifiedType: const FullType(Address))! as Address);
          break;
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'education':
          result.education.replace(serializers.deserialize(value,
              specifiedType: const FullType(Education))! as Education);
          break;
        case 'fathername':
          result.fathername = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'mothername':
          result.mothername = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'dob':
          result.dob = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'adhar':
          result.adhar = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'contacts':
          result.contacts = serializers.deserialize(value,
                  specifiedType: const FullType(
                      List, const [const FullType(EmergencyContact)]))
              as List<EmergencyContact>?;
          break;
        case 'hrid':
          result.hrid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Employee extends Employee {
  @override
  final String id;
  @override
  final String name;
  @override
  final String password;
  @override
  final String? mail;
  @override
  final String phoneno;
  @override
  final Address? address;
  @override
  final String? gender;
  @override
  final Education? education;
  @override
  final String? fathername;
  @override
  final String? mothername;
  @override
  final DateTime? dob;
  @override
  final String? adhar;
  @override
  final List<EmergencyContact>? contacts;
  @override
  final String? hrid;

  factory _$Employee([void Function(EmployeeBuilder)? updates]) =>
      (new EmployeeBuilder()..update(updates))._build();

  _$Employee._(
      {required this.id,
      required this.name,
      required this.password,
      this.mail,
      required this.phoneno,
      this.address,
      this.gender,
      this.education,
      this.fathername,
      this.mothername,
      this.dob,
      this.adhar,
      this.contacts,
      this.hrid})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'Employee', 'id');
    BuiltValueNullFieldError.checkNotNull(name, r'Employee', 'name');
    BuiltValueNullFieldError.checkNotNull(password, r'Employee', 'password');
    BuiltValueNullFieldError.checkNotNull(phoneno, r'Employee', 'phoneno');
  }

  @override
  Employee rebuild(void Function(EmployeeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EmployeeBuilder toBuilder() => new EmployeeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Employee &&
        id == other.id &&
        name == other.name &&
        password == other.password &&
        mail == other.mail &&
        phoneno == other.phoneno &&
        address == other.address &&
        gender == other.gender &&
        education == other.education &&
        fathername == other.fathername &&
        mothername == other.mothername &&
        dob == other.dob &&
        adhar == other.adhar &&
        contacts == other.contacts &&
        hrid == other.hrid;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, mail.hashCode);
    _$hash = $jc(_$hash, phoneno.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, gender.hashCode);
    _$hash = $jc(_$hash, education.hashCode);
    _$hash = $jc(_$hash, fathername.hashCode);
    _$hash = $jc(_$hash, mothername.hashCode);
    _$hash = $jc(_$hash, dob.hashCode);
    _$hash = $jc(_$hash, adhar.hashCode);
    _$hash = $jc(_$hash, contacts.hashCode);
    _$hash = $jc(_$hash, hrid.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Employee')
          ..add('id', id)
          ..add('name', name)
          ..add('password', password)
          ..add('mail', mail)
          ..add('phoneno', phoneno)
          ..add('address', address)
          ..add('gender', gender)
          ..add('education', education)
          ..add('fathername', fathername)
          ..add('mothername', mothername)
          ..add('dob', dob)
          ..add('adhar', adhar)
          ..add('contacts', contacts)
          ..add('hrid', hrid))
        .toString();
  }
}

class EmployeeBuilder implements Builder<Employee, EmployeeBuilder> {
  _$Employee? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _mail;
  String? get mail => _$this._mail;
  set mail(String? mail) => _$this._mail = mail;

  String? _phoneno;
  String? get phoneno => _$this._phoneno;
  set phoneno(String? phoneno) => _$this._phoneno = phoneno;

  AddressBuilder? _address;
  AddressBuilder get address => _$this._address ??= new AddressBuilder();
  set address(AddressBuilder? address) => _$this._address = address;

  String? _gender;
  String? get gender => _$this._gender;
  set gender(String? gender) => _$this._gender = gender;

  EducationBuilder? _education;
  EducationBuilder get education =>
      _$this._education ??= new EducationBuilder();
  set education(EducationBuilder? education) => _$this._education = education;

  String? _fathername;
  String? get fathername => _$this._fathername;
  set fathername(String? fathername) => _$this._fathername = fathername;

  String? _mothername;
  String? get mothername => _$this._mothername;
  set mothername(String? mothername) => _$this._mothername = mothername;

  DateTime? _dob;
  DateTime? get dob => _$this._dob;
  set dob(DateTime? dob) => _$this._dob = dob;

  String? _adhar;
  String? get adhar => _$this._adhar;
  set adhar(String? adhar) => _$this._adhar = adhar;

  List<EmergencyContact>? _contacts;
  List<EmergencyContact>? get contacts => _$this._contacts;
  set contacts(List<EmergencyContact>? contacts) => _$this._contacts = contacts;

  String? _hrid;
  String? get hrid => _$this._hrid;
  set hrid(String? hrid) => _$this._hrid = hrid;

  EmployeeBuilder();

  EmployeeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _password = $v.password;
      _mail = $v.mail;
      _phoneno = $v.phoneno;
      _address = $v.address?.toBuilder();
      _gender = $v.gender;
      _education = $v.education?.toBuilder();
      _fathername = $v.fathername;
      _mothername = $v.mothername;
      _dob = $v.dob;
      _adhar = $v.adhar;
      _contacts = $v.contacts;
      _hrid = $v.hrid;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Employee other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Employee;
  }

  @override
  void update(void Function(EmployeeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Employee build() => _build();

  _$Employee _build() {
    _$Employee _$result;
    try {
      _$result = _$v ??
          new _$Employee._(
              id: BuiltValueNullFieldError.checkNotNull(id, r'Employee', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'Employee', 'name'),
              password: BuiltValueNullFieldError.checkNotNull(
                  password, r'Employee', 'password'),
              mail: mail,
              phoneno: BuiltValueNullFieldError.checkNotNull(
                  phoneno, r'Employee', 'phoneno'),
              address: _address?.build(),
              gender: gender,
              education: _education?.build(),
              fathername: fathername,
              mothername: mothername,
              dob: dob,
              adhar: adhar,
              contacts: contacts,
              hrid: hrid);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'address';
        _address?.build();

        _$failedField = 'education';
        _education?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Employee', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
