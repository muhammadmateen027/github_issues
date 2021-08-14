import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
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
    int index = 1,
  }) async {
    final queryParameters = <String, String>{
      'filter': 'all',
      'sort': sort,
      'per_page': '10',
      'page': '$index'
    };

    final response = await client.get(
      '/issues',
      '',
      queryParameters: queryParameters,
    );

    return await compute(_getIssues, response.data! as List);
  }

  static
  Future<List<IssueData>> _getIssues(List<dynamic> data) async {
    var issues = <IssueData>[];
    if (data.isEmpty) {
      return issues;
    }

    for (var issue in data) {
      issues.add(IssueData.fromJson(issue));
    }

    return issues;
  }
}

