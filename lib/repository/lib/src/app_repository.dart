import 'package:flutter/foundation.dart';
import 'package:github_issues/network/network.dart';
import 'package:github_issues/repository/lib/lib.dart';

part 'repository_service.dart';

/// A sub class of the Music Service
class AppRepository implements RepositoryService {
  /// Constructor will require the client
  const AppRepository({required this.client});

  /// Network client will be required to communicate with the api
  final NetworkClient client;

  /// Load flutter's issue on github
  @override
  Future<List<IssueData>> loadIssues({
    String sort = 'created',
    String filter = 'all',
    int page = 1,
  }) async {
    final params = <String, String>{
      'filter': filter,
      'sort': sort,
      'per_page': '10',
      'page': '$page'
    };

    final response = await client.get('/issues', queryParameters: params);

    return await compute(_getIssues, response.data! as List);
  }

  /// Load flutter's issue detail while using id
  @override
  Future<IssueData> loadIssueDetail(int id) async {
    final response = await client.get('/issues/$id');

    return await compute(_getIssueDetail, response.data);
  }

  /// Isolate function to parse data in another thread
  static Future<List<IssueData>> _getIssues(List<dynamic> data) async {
    var issues = <IssueData>[];
    if (data.isEmpty) {
      return issues;
    }

    for (var issue in data) {
      issues.add(IssueData.fromJson(issue));
    }

    return issues;
  }

  static Future<IssueData> _getIssueDetail(dynamic data) async {
    return IssueData.fromJson(data);
  }
}
