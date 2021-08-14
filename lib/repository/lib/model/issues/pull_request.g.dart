// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pull_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PullRequest _$_$_PullRequestFromJson(Map<String, dynamic> json) {
  return _$_PullRequest(
    url: json['url'] as String?,
    html_url: json['html_url'] as String?,
    diff_url: json['diff_url'] as String?,
    patch_url: json['patch_url'] as String?,
  );
}

Map<String, dynamic> _$_$_PullRequestToJson(_$_PullRequest instance) =>
    <String, dynamic>{
      'url': instance.url,
      'html_url': instance.html_url,
      'diff_url': instance.diff_url,
      'patch_url': instance.patch_url,
    };
