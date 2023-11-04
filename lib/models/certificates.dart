import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:project_inc/models/serializers.dart';

part 'certificates.g.dart';

abstract class Certificates
    implements Built<Certificates, CertificatesBuilder> {
  Certificates._();
  factory Certificates([void Function(CertificatesBuilder) updates]) =
      _$Certificates;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(Certificates.serializer, this)
        as Map<String, dynamic>;
  }

  static Certificates fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Certificates.serializer, json)!;
  }

  static Serializer<Certificates> get serializer => _$certificatesSerializer;
  String get userid;
  String get doc;
}
