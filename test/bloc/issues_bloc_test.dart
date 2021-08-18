import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:github_issues/github/github.dart';
import 'package:github_issues/repository/lib/lib.dart';
import 'package:mocktail/mocktail.dart';

class MockRepositoryService extends Mock implements RepositoryService {}

Future<IssueData> getIssueData() {
  var user = const User(
    login: 'octoct',
    id: 1,
    node_id: '1234567',
    avatar_url: 'https://api.github.com/users/octocat',
    gravatar_id: '',
    url: 'https://api.github.com/users/octocat',
    html_url: 'https://api.github.com/users/octocat',
    followers_url: 'https://api.github.com/users/octocat',
    following_url: 'https://api.github.com/users/octocat',
    gists_url: 'https://api.github.com/users/octocat',
    starred_url: 'https://api.github.com/users/octocat',
    subscriptions_url: 'https://api.github.com/users/octocat',
    organizations_url: 'https://api.github.com/users/octocat',
    repos_url: 'https://api.github.com/users/octocat',
    events_url: 'https://api.github.com/users/octocat',
    received_events_url: 'https://api.github.com/users/octocat',
    type: 'user',
    site_admin: false,
  );
  var labels = const Labels(
    id: 123456789,
    node_id: 'MDU6TGFiZWwyMDgwNDU5NDY=',
    url: 'https://api.github.com/repos/octocat/Hello-World/labels/bug',
    name: 'bug',
    description: 'Something isn\'t working',
    color: 'f29513',
    default_value: true,
  );
  var milestone = Milestone(
    url: 'https://api.github.com/repos/octocat/Hello-World/milestones/1',
    html_url: 'https://api.github.com/repos/octocat/Hello-World/milestones/1',
    labels_url: 'https://api.github.com/repos/octocat/Hello-World/milestones/1',
    id: 123456789,
    node_id: '1234567890=',
    state: 'open',
    title: 'v1.0',
    description: 'Hello world open issue',
    creator: user,
    openIssues: 123456,
    closedIssues: 123456,
    created_at: '2011-04-10T20:09:31Z',
    updated_at: '2011-04-10T20:09:31Z',
    closed_at: '2011-04-10T20:09:31Z',
    due_on: '2011-04-10T20:09:31Z',
  );
  var pullRequest = const PullRequest(
    url: 'https://github.com/octocat/Hello-World/pull/1347',
    html_url: 'https://github.com/octocat/Hello-World/pull/1347',
    diff_url: 'https://github.com/octocat/Hello-World/pull/1347',
    patch_url: 'https://github.com/octocat/Hello-World/pull/1347',
  );
  var repository = Repository(
    id: 123456789,
    node_id: '123456',
    name: 'Hello-World',
    full_name: 'octocat/Hello-World',
    owner: user,
    private: false,
    html_url: 'https://github.com/octocat/Hello-World',
    description: 'This your first repo!',
    fork: false,
    url: 'https://api.github.com/repos/octocat/Hello-World',
    archive_url:
        'https://api.github.com/repos/octocat/Hello-World/{archive_format}{/ref}',
    assignees_url:
        'https://api.github.com/repos/octocat/Hello-World/assignees{/user}',
    blobs_url:
        'https://api.github.com/repos/octocat/Hello-World/git/blobs{/sha}',
    branches_url:
        'https://api.github.com/repos/octocat/Hello-World/branches{/branch}',
    collaborators_url:
        'https://api.github.com/repos/octocat/Hello-World/collaborators{/collaborator}',
    comments_url:
        'https://api.github.com/repos/octocat/Hello-World/comments{/number}',
    commits_url:
        'https://api.github.com/repos/octocat/Hello-World/commits{/sha}',
    compare_url:
        'https://api.github.com/repos/octocat/Hello-World/compare/{base}...{head}',
    contents_url:
        'https://api.github.com/repos/octocat/Hello-World/contents/{+path}',
    contributors_url:
        'https://api.github.com/repos/octocat/Hello-World/contributors',
    deployments_url:
        'https://api.github.com/repos/octocat/Hello-World/deployments',
    downloads_url: 'https://api.github.com/repos/octocat/Hello-World/downloads',
    events_url: 'https://api.github.com/repos/octocat/Hello-World/events',
    forks_url: 'https://api.github.com/repos/octocat/Hello-World/forks',
    git_commits_url:
        'https://api.github.com/repos/octocat/Hello-World/git/commits{/sha}',
    git_refs_url:
        'https://api.github.com/repos/octocat/Hello-World/git/refs{/sha}',
    git_tags_url:
        'https://api.github.com/repos/octocat/Hello-World/git/tags{/sha}',
    git_url: 'git:github.com/octocat/Hello-World.git',
    issue_comment_url:
        'https://api.github.com/repos/octocat/Hello-World/issues/comments{/number}',
    issue_events_url:
        'https://api.github.com/repos/octocat/Hello-World/issues/events{/number}',
    issues_url:
        'https://api.github.com/repos/octocat/Hello-World/issues{/number}',
    keys_url: 'https://api.github.com/repos/octocat/Hello-World/keys{/key_id}',
    labels_url:
        'https://api.github.com/repos/octocat/Hello-World/labels{/name}',
    languages_url: 'https://api.github.com/repos/octocat/Hello-World/languages',
    merges_url: 'https://api.github.com/repos/octocat/Hello-World/merges',
    milestones_url:
        'https://api.github.com/repos/octocat/Hello-World/milestones{/number}',
    notifications_url:
        'https://api.github.com/repos/octocat/Hello-World/notifications{?since,all,participating}',
    pulls_url:
        'https://api.github.com/repos/octocat/Hello-World/pulls{/number}',
    releases_url:
        'https://api.github.com/repos/octocat/Hello-World/releases{/id}',
    ssh_url: 'git@github.com:octocat/Hello-World.git',
    stargazers_url:
        'https://api.github.com/repos/octocat/Hello-World/stargazers',
    statuses_url:
        'https://api.github.com/repos/octocat/Hello-World/statuses/{sha}',
    subscribers_url:
        'https://api.github.com/repos/octocat/Hello-World/subscribers',
    subscription_url:
        'https://api.github.com/repos/octocat/Hello-World/subscription',
    tags_url: 'https://api.github.com/repos/octocat/Hello-World/tags',
    teams_url: 'https://api.github.com/repos/octocat/Hello-World/teams',
    trees_url:
        'https://api.github.com/repos/octocat/Hello-World/git/trees{/sha}',
    clone_url: 'https://github.com/octocat/Hello-World.git',
    mirror_url: 'git:git.example.com/octocat/Hello-World',
    hooks_url: 'https://api.github.com/repos/octocat/Hello-World/hooks',
    svn_url: 'https://svn.github.com/octocat/Hello-World',
    homepage: 'https://github.com',
    language: null,
    forks_count: 9,
    stargazers_count: 80,
    watchers_count: 80,
    size: 108,
    default_branch: 'master',
    open_issues_count: 0,
    is_template: true,
    topics: ['octocat', 'atom', 'electron', 'api'],
    has_issues: true,
    has_projects: true,
    has_wiki: true,
    has_pages: false,
    has_downloads: true,
    archived: false,
    disabled: false,
    visibility: 'public',
    pushed_at: '2011-01-26T19:06:43Z',
    created_at: '2011-01-26T19:01:12Z',
    updated_at: '2011-01-26T19:14:43Z',
    permissions: const Permission(admin: false, push: false, pull: true),
    allow_rebase_merge: true,
    template_repository: null,
    temp_clone_token: 'ABTLWHOULUVAXGTRYU7OC2876QJ2O',
    allow_squash_merge: true,
    allow_auto_merge: false,
    delete_branch_on_merge: true,
    allow_merge_commit: true,
    subscribers_count: 42,
    network_count: 0,
    license: const License(
        key: 'mit',
        name: 'MIT License',
        url: 'https://api.github.com/licenses/mit',
        spdx_id: 'MIT',
        node_id: 'MDc6TGljZW5zZW1pdA==',
        html_url: 'https://github.com/licenses/mit'),
    forks: 1,
    open_issues: 1,
    watchers: 1,
  );
  return Future.value(
    IssueData(
        id: 12345,
        node_id: '1234567',
        url: 'https://api.github.com/repos/octocat/Hello-World/issues/1347',
        repository_url: 'https://api.github.com/repos/octocat/Hello-World',
        labels_url:
            'https://api.github.com/repos/octocat/Hello-World/issues/1347/labels{/name}',
        comments_url:
            'https://api.github.com/repos/octocat/Hello-World/issues/1347',
        events_url:
            'https://api.github.com/repos/octocat/Hello-World/issues/1347',
        html_url:
            'https://api.github.com/repos/octocat/Hello-World/issues/1347',
        number: 12345678,
        state: 'open',
        title: 'Hello world',
        body: 'I\'m having a problem with this.',
        user: user,
        labels: [labels],
        assignee: user,
        assignees: [user],
        milestone: milestone,
        locked: true,
        active_lock_reason: 'too heated',
        comments: 1234,
        pull_request: pullRequest,
        created_at: '2011-04-10T20:09:31Z',
        updated_at: '2011-04-10T20:09:31Z',
        closed_at: '2011-04-10T20:09:31Z',
        repository: repository,
        author_association: 'COLLABORATOR'),
  );
}

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
