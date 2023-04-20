// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collaborationProjects.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CollaborationProjects> _$collaborationProjectsSerializer =
    new _$CollaborationProjectsSerializer();

class _$CollaborationProjectsSerializer
    implements StructuredSerializer<CollaborationProjects> {
  @override
  final Iterable<Type> types = const [
    CollaborationProjects,
    _$CollaborationProjects
  ];
  @override
  final String wireName = 'CollaborationProjects';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, CollaborationProjects object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.project;
    if (value != null) {
      result
        ..add('project')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.skills;
    if (value != null) {
      result
        ..add('skills')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.time;
    if (value != null) {
      result
        ..add('time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.usermail;
    if (value != null) {
      result
        ..add('usermail')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userid;
    if (value != null) {
      result
        ..add('userid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.approved;
    if (value != null) {
      result
        ..add('approved')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  CollaborationProjects deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CollaborationProjectsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'project':
          result.project = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'skills':
          result.skills = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'user':
          result.user = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'usermail':
          result.usermail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'userid':
          result.userid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'approved':
          result.approved = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$CollaborationProjects extends CollaborationProjects {
  @override
  final String? project;
  @override
  final String? skills;
  @override
  final String? user;
  @override
  final String? time;
  @override
  final String? usermail;
  @override
  final String? userid;
  @override
  final String? id;
  @override
  final bool? approved;

  factory _$CollaborationProjects(
          [void Function(CollaborationProjectsBuilder)? updates]) =>
      (new CollaborationProjectsBuilder()..update(updates))._build();

  _$CollaborationProjects._(
      {this.project,
      this.skills,
      this.user,
      this.time,
      this.usermail,
      this.userid,
      this.id,
      this.approved})
      : super._();

  @override
  CollaborationProjects rebuild(
          void Function(CollaborationProjectsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CollaborationProjectsBuilder toBuilder() =>
      new CollaborationProjectsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CollaborationProjects &&
        project == other.project &&
        skills == other.skills &&
        user == other.user &&
        time == other.time &&
        usermail == other.usermail &&
        userid == other.userid &&
        id == other.id &&
        approved == other.approved;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, project.hashCode), skills.hashCode),
                            user.hashCode),
                        time.hashCode),
                    usermail.hashCode),
                userid.hashCode),
            id.hashCode),
        approved.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CollaborationProjects')
          ..add('project', project)
          ..add('skills', skills)
          ..add('user', user)
          ..add('time', time)
          ..add('usermail', usermail)
          ..add('userid', userid)
          ..add('id', id)
          ..add('approved', approved))
        .toString();
  }
}

class CollaborationProjectsBuilder
    implements Builder<CollaborationProjects, CollaborationProjectsBuilder> {
  _$CollaborationProjects? _$v;

  String? _project;
  String? get project => _$this._project;
  set project(String? project) => _$this._project = project;

  String? _skills;
  String? get skills => _$this._skills;
  set skills(String? skills) => _$this._skills = skills;

  String? _user;
  String? get user => _$this._user;
  set user(String? user) => _$this._user = user;

  String? _time;
  String? get time => _$this._time;
  set time(String? time) => _$this._time = time;

  String? _usermail;
  String? get usermail => _$this._usermail;
  set usermail(String? usermail) => _$this._usermail = usermail;

  String? _userid;
  String? get userid => _$this._userid;
  set userid(String? userid) => _$this._userid = userid;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  bool? _approved;
  bool? get approved => _$this._approved;
  set approved(bool? approved) => _$this._approved = approved;

  CollaborationProjectsBuilder();

  CollaborationProjectsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _project = $v.project;
      _skills = $v.skills;
      _user = $v.user;
      _time = $v.time;
      _usermail = $v.usermail;
      _userid = $v.userid;
      _id = $v.id;
      _approved = $v.approved;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CollaborationProjects other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CollaborationProjects;
  }

  @override
  void update(void Function(CollaborationProjectsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CollaborationProjects build() => _build();

  _$CollaborationProjects _build() {
    final _$result = _$v ??
        new _$CollaborationProjects._(
            project: project,
            skills: skills,
            user: user,
            time: time,
            usermail: usermail,
            userid: userid,
            id: id,
            approved: approved);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
