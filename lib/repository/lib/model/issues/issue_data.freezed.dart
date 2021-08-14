// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'issue_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IssueData _$IssueDataFromJson(Map<String, dynamic> json) {
  return _IssueData.fromJson(json);
}

/// @nodoc
class _$IssueDataTearOff {
  const _$IssueDataTearOff();

  _IssueData call(
      {int? id,
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
      String? author_association}) {
    return _IssueData(
      id: id,
      node_id: node_id,
      url: url,
      repository_url: repository_url,
      labels_url: labels_url,
      comments_url: comments_url,
      events_url: events_url,
      html_url: html_url,
      number: number,
      state: state,
      title: title,
      body: body,
      user: user,
      labels: labels,
      assignee: assignee,
      assignees: assignees,
      milestone: milestone,
      locked: locked,
      active_lock_reason: active_lock_reason,
      comments: comments,
      pull_request: pull_request,
      closed_at: closed_at,
      created_at: created_at,
      updated_at: updated_at,
      repository: repository,
      author_association: author_association,
    );
  }

  IssueData fromJson(Map<String, Object> json) {
    return IssueData.fromJson(json);
  }
}

/// @nodoc
const $IssueData = _$IssueDataTearOff();

/// @nodoc
mixin _$IssueData {
  int? get id => throw _privateConstructorUsedError;
  String? get node_id => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get repository_url => throw _privateConstructorUsedError;
  String? get labels_url => throw _privateConstructorUsedError;
  String? get comments_url => throw _privateConstructorUsedError;
  String? get events_url => throw _privateConstructorUsedError;
  String? get html_url => throw _privateConstructorUsedError;
  int? get number => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  List<Labels>? get labels => throw _privateConstructorUsedError;
  User? get assignee => throw _privateConstructorUsedError;
  List<User>? get assignees => throw _privateConstructorUsedError;
  Milestone? get milestone => throw _privateConstructorUsedError;
  bool? get locked => throw _privateConstructorUsedError;
  String? get active_lock_reason => throw _privateConstructorUsedError;
  int? get comments => throw _privateConstructorUsedError;
  PullRequest? get pull_request => throw _privateConstructorUsedError;
  String? get closed_at => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;
  String? get updated_at => throw _privateConstructorUsedError;
  Repository? get repository => throw _privateConstructorUsedError;
  String? get author_association => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IssueDataCopyWith<IssueData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IssueDataCopyWith<$Res> {
  factory $IssueDataCopyWith(IssueData value, $Res Function(IssueData) then) =
      _$IssueDataCopyWithImpl<$Res>;
  $Res call(
      {int? id,
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
      String? author_association});

  $UserCopyWith<$Res>? get user;
  $UserCopyWith<$Res>? get assignee;
  $MilestoneCopyWith<$Res>? get milestone;
  $PullRequestCopyWith<$Res>? get pull_request;
  $RepositoryCopyWith<$Res>? get repository;
}

/// @nodoc
class _$IssueDataCopyWithImpl<$Res> implements $IssueDataCopyWith<$Res> {
  _$IssueDataCopyWithImpl(this._value, this._then);

  final IssueData _value;
  // ignore: unused_field
  final $Res Function(IssueData) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? node_id = freezed,
    Object? url = freezed,
    Object? repository_url = freezed,
    Object? labels_url = freezed,
    Object? comments_url = freezed,
    Object? events_url = freezed,
    Object? html_url = freezed,
    Object? number = freezed,
    Object? state = freezed,
    Object? title = freezed,
    Object? body = freezed,
    Object? user = freezed,
    Object? labels = freezed,
    Object? assignee = freezed,
    Object? assignees = freezed,
    Object? milestone = freezed,
    Object? locked = freezed,
    Object? active_lock_reason = freezed,
    Object? comments = freezed,
    Object? pull_request = freezed,
    Object? closed_at = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? repository = freezed,
    Object? author_association = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      node_id: node_id == freezed
          ? _value.node_id
          : node_id // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      repository_url: repository_url == freezed
          ? _value.repository_url
          : repository_url // ignore: cast_nullable_to_non_nullable
              as String?,
      labels_url: labels_url == freezed
          ? _value.labels_url
          : labels_url // ignore: cast_nullable_to_non_nullable
              as String?,
      comments_url: comments_url == freezed
          ? _value.comments_url
          : comments_url // ignore: cast_nullable_to_non_nullable
              as String?,
      events_url: events_url == freezed
          ? _value.events_url
          : events_url // ignore: cast_nullable_to_non_nullable
              as String?,
      html_url: html_url == freezed
          ? _value.html_url
          : html_url // ignore: cast_nullable_to_non_nullable
              as String?,
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      labels: labels == freezed
          ? _value.labels
          : labels // ignore: cast_nullable_to_non_nullable
              as List<Labels>?,
      assignee: assignee == freezed
          ? _value.assignee
          : assignee // ignore: cast_nullable_to_non_nullable
              as User?,
      assignees: assignees == freezed
          ? _value.assignees
          : assignees // ignore: cast_nullable_to_non_nullable
              as List<User>?,
      milestone: milestone == freezed
          ? _value.milestone
          : milestone // ignore: cast_nullable_to_non_nullable
              as Milestone?,
      locked: locked == freezed
          ? _value.locked
          : locked // ignore: cast_nullable_to_non_nullable
              as bool?,
      active_lock_reason: active_lock_reason == freezed
          ? _value.active_lock_reason
          : active_lock_reason // ignore: cast_nullable_to_non_nullable
              as String?,
      comments: comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as int?,
      pull_request: pull_request == freezed
          ? _value.pull_request
          : pull_request // ignore: cast_nullable_to_non_nullable
              as PullRequest?,
      closed_at: closed_at == freezed
          ? _value.closed_at
          : closed_at // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      updated_at: updated_at == freezed
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String?,
      repository: repository == freezed
          ? _value.repository
          : repository // ignore: cast_nullable_to_non_nullable
              as Repository?,
      author_association: author_association == freezed
          ? _value.author_association
          : author_association // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }

  @override
  $UserCopyWith<$Res>? get assignee {
    if (_value.assignee == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.assignee!, (value) {
      return _then(_value.copyWith(assignee: value));
    });
  }

  @override
  $MilestoneCopyWith<$Res>? get milestone {
    if (_value.milestone == null) {
      return null;
    }

    return $MilestoneCopyWith<$Res>(_value.milestone!, (value) {
      return _then(_value.copyWith(milestone: value));
    });
  }

  @override
  $PullRequestCopyWith<$Res>? get pull_request {
    if (_value.pull_request == null) {
      return null;
    }

    return $PullRequestCopyWith<$Res>(_value.pull_request!, (value) {
      return _then(_value.copyWith(pull_request: value));
    });
  }

  @override
  $RepositoryCopyWith<$Res>? get repository {
    if (_value.repository == null) {
      return null;
    }

    return $RepositoryCopyWith<$Res>(_value.repository!, (value) {
      return _then(_value.copyWith(repository: value));
    });
  }
}

/// @nodoc
abstract class _$IssueDataCopyWith<$Res> implements $IssueDataCopyWith<$Res> {
  factory _$IssueDataCopyWith(
          _IssueData value, $Res Function(_IssueData) then) =
      __$IssueDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
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
      String? author_association});

  @override
  $UserCopyWith<$Res>? get user;
  @override
  $UserCopyWith<$Res>? get assignee;
  @override
  $MilestoneCopyWith<$Res>? get milestone;
  @override
  $PullRequestCopyWith<$Res>? get pull_request;
  @override
  $RepositoryCopyWith<$Res>? get repository;
}

/// @nodoc
class __$IssueDataCopyWithImpl<$Res> extends _$IssueDataCopyWithImpl<$Res>
    implements _$IssueDataCopyWith<$Res> {
  __$IssueDataCopyWithImpl(_IssueData _value, $Res Function(_IssueData) _then)
      : super(_value, (v) => _then(v as _IssueData));

  @override
  _IssueData get _value => super._value as _IssueData;

  @override
  $Res call({
    Object? id = freezed,
    Object? node_id = freezed,
    Object? url = freezed,
    Object? repository_url = freezed,
    Object? labels_url = freezed,
    Object? comments_url = freezed,
    Object? events_url = freezed,
    Object? html_url = freezed,
    Object? number = freezed,
    Object? state = freezed,
    Object? title = freezed,
    Object? body = freezed,
    Object? user = freezed,
    Object? labels = freezed,
    Object? assignee = freezed,
    Object? assignees = freezed,
    Object? milestone = freezed,
    Object? locked = freezed,
    Object? active_lock_reason = freezed,
    Object? comments = freezed,
    Object? pull_request = freezed,
    Object? closed_at = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? repository = freezed,
    Object? author_association = freezed,
  }) {
    return _then(_IssueData(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      node_id: node_id == freezed
          ? _value.node_id
          : node_id // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      repository_url: repository_url == freezed
          ? _value.repository_url
          : repository_url // ignore: cast_nullable_to_non_nullable
              as String?,
      labels_url: labels_url == freezed
          ? _value.labels_url
          : labels_url // ignore: cast_nullable_to_non_nullable
              as String?,
      comments_url: comments_url == freezed
          ? _value.comments_url
          : comments_url // ignore: cast_nullable_to_non_nullable
              as String?,
      events_url: events_url == freezed
          ? _value.events_url
          : events_url // ignore: cast_nullable_to_non_nullable
              as String?,
      html_url: html_url == freezed
          ? _value.html_url
          : html_url // ignore: cast_nullable_to_non_nullable
              as String?,
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      labels: labels == freezed
          ? _value.labels
          : labels // ignore: cast_nullable_to_non_nullable
              as List<Labels>?,
      assignee: assignee == freezed
          ? _value.assignee
          : assignee // ignore: cast_nullable_to_non_nullable
              as User?,
      assignees: assignees == freezed
          ? _value.assignees
          : assignees // ignore: cast_nullable_to_non_nullable
              as List<User>?,
      milestone: milestone == freezed
          ? _value.milestone
          : milestone // ignore: cast_nullable_to_non_nullable
              as Milestone?,
      locked: locked == freezed
          ? _value.locked
          : locked // ignore: cast_nullable_to_non_nullable
              as bool?,
      active_lock_reason: active_lock_reason == freezed
          ? _value.active_lock_reason
          : active_lock_reason // ignore: cast_nullable_to_non_nullable
              as String?,
      comments: comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as int?,
      pull_request: pull_request == freezed
          ? _value.pull_request
          : pull_request // ignore: cast_nullable_to_non_nullable
              as PullRequest?,
      closed_at: closed_at == freezed
          ? _value.closed_at
          : closed_at // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      updated_at: updated_at == freezed
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String?,
      repository: repository == freezed
          ? _value.repository
          : repository // ignore: cast_nullable_to_non_nullable
              as Repository?,
      author_association: author_association == freezed
          ? _value.author_association
          : author_association // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IssueData implements _IssueData {
  const _$_IssueData(
      {this.id,
      this.node_id,
      this.url,
      this.repository_url,
      this.labels_url,
      this.comments_url,
      this.events_url,
      this.html_url,
      this.number,
      this.state,
      this.title,
      this.body,
      this.user,
      this.labels,
      this.assignee,
      this.assignees,
      this.milestone,
      this.locked,
      this.active_lock_reason,
      this.comments,
      this.pull_request,
      this.closed_at,
      this.created_at,
      this.updated_at,
      this.repository,
      this.author_association});

  factory _$_IssueData.fromJson(Map<String, dynamic> json) =>
      _$_$_IssueDataFromJson(json);

  @override
  final int? id;
  @override
  final String? node_id;
  @override
  final String? url;
  @override
  final String? repository_url;
  @override
  final String? labels_url;
  @override
  final String? comments_url;
  @override
  final String? events_url;
  @override
  final String? html_url;
  @override
  final int? number;
  @override
  final String? state;
  @override
  final String? title;
  @override
  final String? body;
  @override
  final User? user;
  @override
  final List<Labels>? labels;
  @override
  final User? assignee;
  @override
  final List<User>? assignees;
  @override
  final Milestone? milestone;
  @override
  final bool? locked;
  @override
  final String? active_lock_reason;
  @override
  final int? comments;
  @override
  final PullRequest? pull_request;
  @override
  final String? closed_at;
  @override
  final String? created_at;
  @override
  final String? updated_at;
  @override
  final Repository? repository;
  @override
  final String? author_association;

  @override
  String toString() {
    return 'IssueData(id: $id, node_id: $node_id, url: $url, repository_url: $repository_url, labels_url: $labels_url, comments_url: $comments_url, events_url: $events_url, html_url: $html_url, number: $number, state: $state, title: $title, body: $body, user: $user, labels: $labels, assignee: $assignee, assignees: $assignees, milestone: $milestone, locked: $locked, active_lock_reason: $active_lock_reason, comments: $comments, pull_request: $pull_request, closed_at: $closed_at, created_at: $created_at, updated_at: $updated_at, repository: $repository, author_association: $author_association)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _IssueData &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.node_id, node_id) ||
                const DeepCollectionEquality()
                    .equals(other.node_id, node_id)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.repository_url, repository_url) ||
                const DeepCollectionEquality()
                    .equals(other.repository_url, repository_url)) &&
            (identical(other.labels_url, labels_url) ||
                const DeepCollectionEquality()
                    .equals(other.labels_url, labels_url)) &&
            (identical(other.comments_url, comments_url) ||
                const DeepCollectionEquality()
                    .equals(other.comments_url, comments_url)) &&
            (identical(other.events_url, events_url) ||
                const DeepCollectionEquality()
                    .equals(other.events_url, events_url)) &&
            (identical(other.html_url, html_url) ||
                const DeepCollectionEquality()
                    .equals(other.html_url, html_url)) &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.labels, labels) ||
                const DeepCollectionEquality().equals(other.labels, labels)) &&
            (identical(other.assignee, assignee) ||
                const DeepCollectionEquality()
                    .equals(other.assignee, assignee)) &&
            (identical(other.assignees, assignees) ||
                const DeepCollectionEquality()
                    .equals(other.assignees, assignees)) &&
            (identical(other.milestone, milestone) ||
                const DeepCollectionEquality()
                    .equals(other.milestone, milestone)) &&
            (identical(other.locked, locked) ||
                const DeepCollectionEquality().equals(other.locked, locked)) &&
            (identical(other.active_lock_reason, active_lock_reason) ||
                const DeepCollectionEquality()
                    .equals(other.active_lock_reason, active_lock_reason)) &&
            (identical(other.comments, comments) ||
                const DeepCollectionEquality()
                    .equals(other.comments, comments)) &&
            (identical(other.pull_request, pull_request) ||
                const DeepCollectionEquality()
                    .equals(other.pull_request, pull_request)) &&
            (identical(other.closed_at, closed_at) ||
                const DeepCollectionEquality()
                    .equals(other.closed_at, closed_at)) &&
            (identical(other.created_at, created_at) ||
                const DeepCollectionEquality()
                    .equals(other.created_at, created_at)) &&
            (identical(other.updated_at, updated_at) ||
                const DeepCollectionEquality()
                    .equals(other.updated_at, updated_at)) &&
            (identical(other.repository, repository) ||
                const DeepCollectionEquality()
                    .equals(other.repository, repository)) &&
            (identical(other.author_association, author_association) ||
                const DeepCollectionEquality()
                    .equals(other.author_association, author_association)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(node_id) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(repository_url) ^
      const DeepCollectionEquality().hash(labels_url) ^
      const DeepCollectionEquality().hash(comments_url) ^
      const DeepCollectionEquality().hash(events_url) ^
      const DeepCollectionEquality().hash(html_url) ^
      const DeepCollectionEquality().hash(number) ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(body) ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(labels) ^
      const DeepCollectionEquality().hash(assignee) ^
      const DeepCollectionEquality().hash(assignees) ^
      const DeepCollectionEquality().hash(milestone) ^
      const DeepCollectionEquality().hash(locked) ^
      const DeepCollectionEquality().hash(active_lock_reason) ^
      const DeepCollectionEquality().hash(comments) ^
      const DeepCollectionEquality().hash(pull_request) ^
      const DeepCollectionEquality().hash(closed_at) ^
      const DeepCollectionEquality().hash(created_at) ^
      const DeepCollectionEquality().hash(updated_at) ^
      const DeepCollectionEquality().hash(repository) ^
      const DeepCollectionEquality().hash(author_association);

  @JsonKey(ignore: true)
  @override
  _$IssueDataCopyWith<_IssueData> get copyWith =>
      __$IssueDataCopyWithImpl<_IssueData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_IssueDataToJson(this);
  }
}

abstract class _IssueData implements IssueData {
  const factory _IssueData(
      {int? id,
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
      String? author_association}) = _$_IssueData;

  factory _IssueData.fromJson(Map<String, dynamic> json) =
      _$_IssueData.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get node_id => throw _privateConstructorUsedError;
  @override
  String? get url => throw _privateConstructorUsedError;
  @override
  String? get repository_url => throw _privateConstructorUsedError;
  @override
  String? get labels_url => throw _privateConstructorUsedError;
  @override
  String? get comments_url => throw _privateConstructorUsedError;
  @override
  String? get events_url => throw _privateConstructorUsedError;
  @override
  String? get html_url => throw _privateConstructorUsedError;
  @override
  int? get number => throw _privateConstructorUsedError;
  @override
  String? get state => throw _privateConstructorUsedError;
  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  String? get body => throw _privateConstructorUsedError;
  @override
  User? get user => throw _privateConstructorUsedError;
  @override
  List<Labels>? get labels => throw _privateConstructorUsedError;
  @override
  User? get assignee => throw _privateConstructorUsedError;
  @override
  List<User>? get assignees => throw _privateConstructorUsedError;
  @override
  Milestone? get milestone => throw _privateConstructorUsedError;
  @override
  bool? get locked => throw _privateConstructorUsedError;
  @override
  String? get active_lock_reason => throw _privateConstructorUsedError;
  @override
  int? get comments => throw _privateConstructorUsedError;
  @override
  PullRequest? get pull_request => throw _privateConstructorUsedError;
  @override
  String? get closed_at => throw _privateConstructorUsedError;
  @override
  String? get created_at => throw _privateConstructorUsedError;
  @override
  String? get updated_at => throw _privateConstructorUsedError;
  @override
  Repository? get repository => throw _privateConstructorUsedError;
  @override
  String? get author_association => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$IssueDataCopyWith<_IssueData> get copyWith =>
      throw _privateConstructorUsedError;
}
