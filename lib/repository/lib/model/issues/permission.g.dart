// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'permission.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Permission _$_$_PermissionFromJson(Map<String, dynamic> json) {
  return _$_Permission(
    admin: json['admin'] as bool?,
    push: json['push'] as bool?,
    pull: json['pull'] as bool?,
  );
}

Map<String, dynamic> _$_$_PermissionToJson(_$_Permission instance) =>
    <String, dynamic>{
      'admin': instance.admin,
      'push': instance.push,
      'pull': instance.pull,
    };
