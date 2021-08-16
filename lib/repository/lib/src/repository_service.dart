part of 'app_repository.dart';

/// This class will handle only repository related to the api
abstract class RepositoryService {
  /// Load flutter's issue from github
  Future<List<IssueData>> loadIssues({
    String sort = 'created',
    String filter = 'all',
    int page = 1,
  });

  /// Load flutter's issue detail while using id
  Future<IssueData> loadIssueDetail(int id);
}
