// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'identity_docs.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<IdentityDocs> _$identityDocsSerializer =
    new _$IdentityDocsSerializer();

class _$IdentityDocsSerializer implements StructuredSerializer<IdentityDocs> {
  @override
  final Iterable<Type> types = const [IdentityDocs, _$IdentityDocs];
  @override
  final String wireName = 'IdentityDocs';

  @override
  Iterable<Object?> serialize(Serializers serializers, IdentityDocs object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'empid',
      serializers.serialize(object.empid,
          specifiedType: const FullType(String)),
      'doc',
      serializers.serialize(object.doc, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  IdentityDocs deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new IdentityDocsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'empid':
          result.empid = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'doc':
          result.doc = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$IdentityDocs extends IdentityDocs {
  @override
  final String empid;
  @override
  final String doc;

  factory _$IdentityDocs([void Function(IdentityDocsBuilder)? updates]) =>
      (new IdentityDocsBuilder()..update(updates))._build();

  _$IdentityDocs._({required this.empid, required this.doc}) : super._() {
    BuiltValueNullFieldError.checkNotNull(empid, r'IdentityDocs', 'empid');
    BuiltValueNullFieldError.checkNotNull(doc, r'IdentityDocs', 'doc');
  }

  @override
  IdentityDocs rebuild(void Function(IdentityDocsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IdentityDocsBuilder toBuilder() => new IdentityDocsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IdentityDocs && empid == other.empid && doc == other.doc;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, empid.hashCode);
    _$hash = $jc(_$hash, doc.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IdentityDocs')
          ..add('empid', empid)
          ..add('doc', doc))
        .toString();
  }
}

class IdentityDocsBuilder
    implements Builder<IdentityDocs, IdentityDocsBuilder> {
  _$IdentityDocs? _$v;

  String? _empid;
  String? get empid => _$this._empid;
  set empid(String? empid) => _$this._empid = empid;

  String? _doc;
  String? get doc => _$this._doc;
  set doc(String? doc) => _$this._doc = doc;

  IdentityDocsBuilder();

  IdentityDocsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _empid = $v.empid;
      _doc = $v.doc;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IdentityDocs other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IdentityDocs;
  }

  @override
  void update(void Function(IdentityDocsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IdentityDocs build() => _build();

  _$IdentityDocs _build() {
    final _$result = _$v ??
        new _$IdentityDocs._(
            empid: BuiltValueNullFieldError.checkNotNull(
                empid, r'IdentityDocs', 'empid'),
            doc: BuiltValueNullFieldError.checkNotNull(
                doc, r'IdentityDocs', 'doc'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
