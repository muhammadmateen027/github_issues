// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'milestone.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Milestone _$_$_MilestoneFromJson(Map<String, dynamic> json) {
  return _$_Milestone(
    url: json['url'] as String?,
    html_url: json['html_url'] as String?,
    labels_url: json['labels_url'] as String?,
    id: json['id'] as int?,
    node_id: json['node_id'] as String?,
    number: json['number'] as int?,
    state: json['state'] as String?,
    title: json['title'] as String?,
    description: json['description'] as String?,
    creator: json['creator'] == null
        ? null
        : User.fromJson(json['creator'] as Map<String, dynamic>),
    openIssues: json['openIssues'] as int?,
    closedIssues: json['closedIssues'] as int?,
    created_at: json['created_at'] as String?,
    updated_at: json['updated_at'] as String?,
    closed_at: json['closed_at'] as String?,
    due_on: json['due_on'] as String?,
  );
}

Map<String, dynamic> _$_$_MilestoneToJson(_$_Milestone instance) =>
    <String, dynamic>{
      'url': instance.url,
      'html_url': instance.html_url,
      'labels_url': instance.labels_url,
      'id': instance.id,
      'node_id': instance.node_id,
      'number': instance.number,
      'state': instance.state,
      'title': instance.title,
      'description': instance.description,
      'creator': instance.creator,
      'openIssues': instance.openIssues,
      'closedIssues': instance.closedIssues,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'closed_at': instance.closed_at,
      'due_on': instance.due_on,
    };
