// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tax_docs.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TaxDocs> _$taxDocsSerializer = new _$TaxDocsSerializer();

class _$TaxDocsSerializer implements StructuredSerializer<TaxDocs> {
  @override
  final Iterable<Type> types = const [TaxDocs, _$TaxDocs];
  @override
  final String wireName = 'TaxDocs';

  @override
  Iterable<Object?> serialize(Serializers serializers, TaxDocs object,
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
  TaxDocs deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TaxDocsBuilder();

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

class _$TaxDocs extends TaxDocs {
  @override
  final String userid;
  @override
  final String doc;

  factory _$TaxDocs([void Function(TaxDocsBuilder)? updates]) =>
      (new TaxDocsBuilder()..update(updates))._build();

  _$TaxDocs._({required this.userid, required this.doc}) : super._() {
    BuiltValueNullFieldError.checkNotNull(userid, r'TaxDocs', 'userid');
    BuiltValueNullFieldError.checkNotNull(doc, r'TaxDocs', 'doc');
  }

  @override
  TaxDocs rebuild(void Function(TaxDocsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TaxDocsBuilder toBuilder() => new TaxDocsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TaxDocs && userid == other.userid && doc == other.doc;
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
    return (newBuiltValueToStringHelper(r'TaxDocs')
          ..add('userid', userid)
          ..add('doc', doc))
        .toString();
  }
}

class TaxDocsBuilder implements Builder<TaxDocs, TaxDocsBuilder> {
  _$TaxDocs? _$v;

  String? _userid;
  String? get userid => _$this._userid;
  set userid(String? userid) => _$this._userid = userid;

  String? _doc;
  String? get doc => _$this._doc;
  set doc(String? doc) => _$this._doc = doc;

  TaxDocsBuilder();

  TaxDocsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userid = $v.userid;
      _doc = $v.doc;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TaxDocs other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TaxDocs;
  }

  @override
  void update(void Function(TaxDocsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TaxDocs build() => _build();

  _$TaxDocs _build() {
    final _$result = _$v ??
        new _$TaxDocs._(
            userid: BuiltValueNullFieldError.checkNotNull(
                userid, r'TaxDocs', 'userid'),
            doc: BuiltValueNullFieldError.checkNotNull(doc, r'TaxDocs', 'doc'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
