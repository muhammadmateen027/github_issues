import 'package:freezed_annotation/freezed_annotation.dart';

part 'pull_request.freezed.dart';
part 'pull_request.g.dart';

@freezed

class PullRequest with _$PullRequest {
  const factory PullRequest({
    String? url,
    String? html_url,
    String? diff_url,
    String? patch_url,
  }) = _PullRequest;

  factory PullRequest.fromJson(Map<String, dynamic> json) => _$PullRequestFromJson(json);
}