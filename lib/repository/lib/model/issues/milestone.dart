import 'package:freezed_annotation/freezed_annotation.dart';
import 'issues.dart';
part 'milestone.freezed.dart';
part 'milestone.g.dart';

@freezed
class Milestone with _$Milestone {
  const factory Milestone({
    String? url,
    String? html_url,
    String? labels_url,
    int? id,
    String? node_id,
    int? number,
    String? state,
    String? title,
    String? description,
    User? creator,
    int? openIssues,
    int? closedIssues,
    String? created_at,
    String? updated_at,
    String? closed_at,
    String? due_on,
  }) = _Milestone;

  factory Milestone.fromJson(Map<String, dynamic> json) => _$MilestoneFromJson(json);
}