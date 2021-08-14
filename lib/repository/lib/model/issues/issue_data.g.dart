// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'issue_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IssueData _$_$_IssueDataFromJson(Map<String, dynamic> json) {
  return _$_IssueData(
    id: json['id'] as int?,
    node_id: json['node_id'] as String?,
    url: json['url'] as String?,
    repository_url: json['repository_url'] as String?,
    labels_url: json['labels_url'] as String?,
    comments_url: json['comments_url'] as String?,
    events_url: json['events_url'] as String?,
    html_url: json['html_url'] as String?,
    number: json['number'] as int?,
    state: json['state'] as String?,
    title: json['title'] as String?,
    body: json['body'] as String?,
    user: json['user'] == null
        ? null
        : User.fromJson(json['user'] as Map<String, dynamic>),
    labels: (json['labels'] as List<dynamic>?)
        ?.map((e) => Labels.fromJson(e as Map<String, dynamic>))
        .toList(),
    assignee: json['assignee'] == null
        ? null
        : User.fromJson(json['assignee'] as Map<String, dynamic>),
    assignees: (json['assignees'] as List<dynamic>?)
        ?.map((e) => User.fromJson(e as Map<String, dynamic>))
        .toList(),
    milestone: json['milestone'] == null
        ? null
        : Milestone.fromJson(json['milestone'] as Map<String, dynamic>),
    locked: json['locked'] as bool?,
    active_lock_reason: json['active_lock_reason'] as String?,
    comments: json['comments'] as int?,
    pull_request: json['pull_request'] == null
        ? null
        : PullRequest.fromJson(json['pull_request'] as Map<String, dynamic>),
    closed_at: json['closed_at'] as String?,
    created_at: json['created_at'] as String?,
    updated_at: json['updated_at'] as String?,
    repository: json['repository'] == null
        ? null
        : Repository.fromJson(json['repository'] as Map<String, dynamic>),
    author_association: json['author_association'] as String?,
  );
}

Map<String, dynamic> _$_$_IssueDataToJson(_$_IssueData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'node_id': instance.node_id,
      'url': instance.url,
      'repository_url': instance.repository_url,
      'labels_url': instance.labels_url,
      'comments_url': instance.comments_url,
      'events_url': instance.events_url,
      'html_url': instance.html_url,
      'number': instance.number,
      'state': instance.state,
      'title': instance.title,
      'body': instance.body,
      'user': instance.user,
      'labels': instance.labels,
      'assignee': instance.assignee,
      'assignees': instance.assignees,
      'milestone': instance.milestone,
      'locked': instance.locked,
      'active_lock_reason': instance.active_lock_reason,
      'comments': instance.comments,
      'pull_request': instance.pull_request,
      'closed_at': instance.closed_at,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'repository': instance.repository,
      'author_association': instance.author_association,
    };
