import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:github_issues/github/github.dart';
import 'package:github_issues/repository/lib/lib.dart';
import 'package:mocktail/mocktail.dart';

import 'model_data.dart';

class MockRepositoryService extends Mock implements RepositoryService {}

void main() {
  late MockRepositoryService repository;
  late IssueDetailBloc issueDetailBloc;
  late IssueData issueData;
  setUp(() async {
    issueData = await getIssueData();
    repository = MockRepositoryService();
    issueDetailBloc = IssueDetailBloc(repository);
  });

  group('Initialize Bloc', () {
    blocTest<IssueDetailBloc, IssueDetailState>(
      'emits [] when nothing is added',
      build: () => issueDetailBloc,
      expect: () => [],
    );
  });

  group('IssueDetailLoaded', () {
    blocTest<IssueDetailBloc, IssueDetailState>(
      'emits [IssueDetailLoading, IssueDetailLoaded] '
          'when search detail of an issue',
      build: () {
        when(() => repository.loadIssueDetail(12345)).thenAnswer(
          (_) async => issueData,
        );
        return issueDetailBloc;
      },
      act: (bloc) => bloc.add(LoadIssueDetail(12345)),
      expect: () => [
        IssueDetailLoading(),
        IssueDetailLoaded(issueData),
      ],
      verify: (_) {
        verify(() => repository.loadIssueDetail(12345)).called(1);
      }
    );
  });
}
