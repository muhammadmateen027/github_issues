import 'issue_data.dart';

class GithubIssues {
  final List<IssueData>? photos;

  GithubIssues({this.photos});

  factory GithubIssues.fromJson(List<dynamic> parsedJson) {
    List<IssueData> photos = <IssueData>[];

    return GithubIssues(photos: photos);
  }
}
