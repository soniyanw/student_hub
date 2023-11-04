// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'education.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Education> _$educationSerializer = new _$EducationSerializer();

class _$EducationSerializer implements StructuredSerializer<Education> {
  @override
  final Iterable<Type> types = const [Education, _$Education];
  @override
  final String wireName = 'Education';

  @override
  Iterable<Object?> serialize(Serializers serializers, Education object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'qualification',
      serializers.serialize(object.qualification,
          specifiedType: const FullType(String)),
      'percent',
      serializers.serialize(object.percent,
          specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  Education deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EducationBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'qualification':
          result.qualification = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'percent':
          result.percent = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
      }
    }

    return result.build();
  }
}

class _$Education extends Education {
  @override
  final String qualification;
  @override
  final double percent;

  factory _$Education([void Function(EducationBuilder)? updates]) =>
      (new EducationBuilder()..update(updates))._build();

  _$Education._({required this.qualification, required this.percent})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        qualification, r'Education', 'qualification');
    BuiltValueNullFieldError.checkNotNull(percent, r'Education', 'percent');
  }

  @override
  Education rebuild(void Function(EducationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EducationBuilder toBuilder() => new EducationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Education &&
        qualification == other.qualification &&
        percent == other.percent;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, qualification.hashCode);
    _$hash = $jc(_$hash, percent.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Education')
          ..add('qualification', qualification)
          ..add('percent', percent))
        .toString();
  }
}

class EducationBuilder implements Builder<Education, EducationBuilder> {
  _$Education? _$v;

  String? _qualification;
  String? get qualification => _$this._qualification;
  set qualification(String? qualification) =>
      _$this._qualification = qualification;

  double? _percent;
  double? get percent => _$this._percent;
  set percent(double? percent) => _$this._percent = percent;

  EducationBuilder();

  EducationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _qualification = $v.qualification;
      _percent = $v.percent;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Education other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Education;
  }

  @override
  void update(void Function(EducationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Education build() => _build();

  _$Education _build() {
    final _$result = _$v ??
        new _$Education._(
            qualification: BuiltValueNullFieldError.checkNotNull(
                qualification, r'Education', 'qualification'),
            percent: BuiltValueNullFieldError.checkNotNull(
                percent, r'Education', 'percent'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
