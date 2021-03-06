import 'package:freezed_annotation/freezed_annotation.dart';
import 'issues.dart';

part 'repository.freezed.dart';
part 'repository.g.dart';

@freezed
class Repository with _$Repository {
  const factory Repository({
    int? id,
    String? node_id,
    String? name,
    String? full_name,
    User? owner,
    bool? private,
    String? html_url,
    String? description,
    bool? fork,
    String? url,
    String? archive_url,
    String? assignees_url,
    String? blobs_url,
    String? branches_url,
    String? collaborators_url,
    String? comments_url,
    String? commits_url,
    String? compare_url,
    String? contents_url,
    String? contributors_url,
    String? deployments_url,
    String? downloads_url,
    String? events_url,
    String? forks_url,
    String? git_commits_url,
    String? git_refs_url,
    String? git_tags_url,
    String? git_url,
    String? issue_comment_url,
    String? issue_events_url,
    String? issues_url,
    String? keys_url,
    String? labels_url,
    String? languages_url,
    String? merges_url,
    String? milestones_url,
    String? notifications_url,
    String? pulls_url,
    String? releases_url,
    String? ssh_url,
    String? stargazers_url,
    String? statuses_url,
    String? subscribers_url,
    String? subscription_url,
    String? tags_url,
    String? teams_url,
    String? trees_url,
    String? clone_url,
    String? mirror_url,
    String? hooks_url,
    String? svn_url,
    String? homepage,
    String? language,
    int? forks_count,
    int? stargazers_count,
    int? watchers_count,
    int? size,
    String? default_branch,
    int? open_issues_count,
    bool? is_template,
    List<String>? topics,
    bool? has_issues,
    bool? has_projects,
    bool? has_wiki,
    bool? has_pages,
    bool? has_downloads,
    bool? archived,
    bool? disabled,
    String? visibility,
    String? pushed_at,
    String? created_at,
    String? updated_at,
    Permission? permissions,
    bool? allow_rebase_merge,
    String? template_repository,
    String? temp_clone_token,
    bool? allow_squash_merge,
    bool? allow_auto_merge,
    bool? delete_branch_on_merge,
    bool? allow_merge_commit,
    int? subscribers_count,
    int? network_count,
    License? license,
    int? forks,
    int? open_issues,
    int? watchers,
  }) = _Repository;

  factory Repository.fromJson(Map<String, dynamic> json) => _$RepositoryFromJson(json);
}