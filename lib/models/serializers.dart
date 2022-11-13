import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:project_inc/models/answer.dart';
import 'package:project_inc/models/appstate.dart';
import 'package:project_inc/models/collaborations.dart';
import 'package:project_inc/models/feedbacks.dart';
import 'package:project_inc/models/queries.dart';

part 'serializers.g.dart';

@SerializersFor([
  // TODO: add the built values that require serialization
  Feedbacks, Appstate, Collaborations, Queries, Answer
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
