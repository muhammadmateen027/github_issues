import 'package:freezed_annotation/freezed_annotation.dart';
import 'issues.dart';
import 'labels.dart';

part 'issue_data.freezed.dart';

part 'issue_data.g.dart';

@freezed
class IssueData with _$IssueData {
  const factory IssueData({
    int? id,
    String? node_id,
    String? url,
    String? repository_url,
    String? labels_url,
    String? comments_url,
    String? events_url,
    String? html_url,
    int? number,
    String? state,
    String? title,
    String? body,
    User? user,
    List<Labels>? labels,
    User? assignee,
    List<User>? assignees,
    Milestone? milestone,
    bool? locked,
    String? active_lock_reason,
    int? comments,
    PullRequest? pull_request,
    String? closed_at,
    String? created_at,
    String? updated_at,
    Repository? repository,
    String? author_association,
  }) = _IssueData;

  factory IssueData.fromJson(Map<String, dynamic> json) =>
      _$IssueDataFromJson(json);
}
