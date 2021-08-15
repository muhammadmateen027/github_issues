part of 'app_repository.dart';

/// This class will handle only repository related to the api
abstract class RepositoryService {
  /// Load flutter's issue on github
  Future<List<IssueData>> loadIssues({
    String sort = 'created',
    String filter = 'all',
    int page = 1,
  });
}
