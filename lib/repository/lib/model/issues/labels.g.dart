// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'labels.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Labels _$_$_LabelsFromJson(Map<String, dynamic> json) {
  return _$_Labels(
    id: json['id'] as int?,
    node_id: json['node_id'] as String?,
    url: json['url'] as String?,
    name: json['name'] as String?,
    description: json['description'] as String?,
    color: json['color'] as String?,
    default_value: json['default_value'] as bool?,
  );
}

Map<String, dynamic> _$_$_LabelsToJson(_$_Labels instance) => <String, dynamic>{
      'id': instance.id,
      'node_id': instance.node_id,
      'url': instance.url,
      'name': instance.name,
      'description': instance.description,
      'color': instance.color,
      'default_value': instance.default_value,
    };
