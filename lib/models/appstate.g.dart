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
    final result = <Object?>[
      'emp',
      serializers.serialize(object.emp,
          specifiedType: const FullType(Employee)),
      'hr',
      serializers.serialize(object.hr, specifiedType: const FullType(Hr)),
      'employees',
      serializers.serialize(object.employees,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Employee)])),
      'hrs',
      serializers.serialize(object.hrs,
          specifiedType: const FullType(BuiltList, const [const FullType(Hr)])),
    ];

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
        case 'emp':
          result.emp.replace(serializers.deserialize(value,
              specifiedType: const FullType(Employee))! as Employee);
          break;
        case 'hr':
          result.hr.replace(serializers.deserialize(value,
              specifiedType: const FullType(Hr))! as Hr);
          break;
        case 'employees':
          result.employees.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Employee)]))!
              as BuiltList<Object?>);
          break;
        case 'hrs':
          result.hrs.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Hr)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Appstate extends Appstate {
  @override
  final Employee emp;
  @override
  final Hr hr;
  @override
  final BuiltList<Employee> employees;
  @override
  final BuiltList<Hr> hrs;

  factory _$Appstate([void Function(AppstateBuilder)? updates]) =>
      (new AppstateBuilder()..update(updates))._build();

  _$Appstate._(
      {required this.emp,
      required this.hr,
      required this.employees,
      required this.hrs})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(emp, r'Appstate', 'emp');
    BuiltValueNullFieldError.checkNotNull(hr, r'Appstate', 'hr');
    BuiltValueNullFieldError.checkNotNull(employees, r'Appstate', 'employees');
    BuiltValueNullFieldError.checkNotNull(hrs, r'Appstate', 'hrs');
  }

  @override
  Appstate rebuild(void Function(AppstateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppstateBuilder toBuilder() => new AppstateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Appstate &&
        emp == other.emp &&
        hr == other.hr &&
        employees == other.employees &&
        hrs == other.hrs;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, emp.hashCode);
    _$hash = $jc(_$hash, hr.hashCode);
    _$hash = $jc(_$hash, employees.hashCode);
    _$hash = $jc(_$hash, hrs.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Appstate')
          ..add('emp', emp)
          ..add('hr', hr)
          ..add('employees', employees)
          ..add('hrs', hrs))
        .toString();
  }
}

class AppstateBuilder implements Builder<Appstate, AppstateBuilder> {
  _$Appstate? _$v;

  EmployeeBuilder? _emp;
  EmployeeBuilder get emp => _$this._emp ??= new EmployeeBuilder();
  set emp(EmployeeBuilder? emp) => _$this._emp = emp;

  HrBuilder? _hr;
  HrBuilder get hr => _$this._hr ??= new HrBuilder();
  set hr(HrBuilder? hr) => _$this._hr = hr;

  ListBuilder<Employee>? _employees;
  ListBuilder<Employee> get employees =>
      _$this._employees ??= new ListBuilder<Employee>();
  set employees(ListBuilder<Employee>? employees) =>
      _$this._employees = employees;

  ListBuilder<Hr>? _hrs;
  ListBuilder<Hr> get hrs => _$this._hrs ??= new ListBuilder<Hr>();
  set hrs(ListBuilder<Hr>? hrs) => _$this._hrs = hrs;

  AppstateBuilder();

  AppstateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _emp = $v.emp.toBuilder();
      _hr = $v.hr.toBuilder();
      _employees = $v.employees.toBuilder();
      _hrs = $v.hrs.toBuilder();
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
              emp: emp.build(),
              hr: hr.build(),
              employees: employees.build(),
              hrs: hrs.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'emp';
        emp.build();
        _$failedField = 'hr';
        hr.build();
        _$failedField = 'employees';
        employees.build();
        _$failedField = 'hrs';
        hrs.build();
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
