// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'certificates.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Certificates> _$certificatesSerializer =
    new _$CertificatesSerializer();

class _$CertificatesSerializer implements StructuredSerializer<Certificates> {
  @override
  final Iterable<Type> types = const [Certificates, _$Certificates];
  @override
  final String wireName = 'Certificates';

  @override
  Iterable<Object?> serialize(Serializers serializers, Certificates object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'userid',
      serializers.serialize(object.userid,
          specifiedType: const FullType(String)),
      'doc',
      serializers.serialize(object.doc, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Certificates deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CertificatesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'userid':
          result.userid = serializers.deserialize(value,
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

class _$Certificates extends Certificates {
  @override
  final String userid;
  @override
  final String doc;

  factory _$Certificates([void Function(CertificatesBuilder)? updates]) =>
      (new CertificatesBuilder()..update(updates))._build();

  _$Certificates._({required this.userid, required this.doc}) : super._() {
    BuiltValueNullFieldError.checkNotNull(userid, r'Certificates', 'userid');
    BuiltValueNullFieldError.checkNotNull(doc, r'Certificates', 'doc');
  }

  @override
  Certificates rebuild(void Function(CertificatesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CertificatesBuilder toBuilder() => new CertificatesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Certificates && userid == other.userid && doc == other.doc;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userid.hashCode);
    _$hash = $jc(_$hash, doc.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Certificates')
          ..add('userid', userid)
          ..add('doc', doc))
        .toString();
  }
}

class CertificatesBuilder
    implements Builder<Certificates, CertificatesBuilder> {
  _$Certificates? _$v;

  String? _userid;
  String? get userid => _$this._userid;
  set userid(String? userid) => _$this._userid = userid;

  String? _doc;
  String? get doc => _$this._doc;
  set doc(String? doc) => _$this._doc = doc;

  CertificatesBuilder();

  CertificatesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userid = $v.userid;
      _doc = $v.doc;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Certificates other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Certificates;
  }

  @override
  void update(void Function(CertificatesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Certificates build() => _build();

  _$Certificates _build() {
    final _$result = _$v ??
        new _$Certificates._(
            userid: BuiltValueNullFieldError.checkNotNull(
                userid, r'Certificates', 'userid'),
            doc: BuiltValueNullFieldError.checkNotNull(
                doc, r'Certificates', 'doc'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
