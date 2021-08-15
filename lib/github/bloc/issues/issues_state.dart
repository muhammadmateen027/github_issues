part of 'issues_bloc.dart';

@immutable
abstract class IssuesState extends Equatable {
  @override
  List<Object> get props => [];
}

class IssuesInitial extends IssuesState {}

class IssuesLoading extends IssuesState {
  IssuesLoading({this.loadingState = LoadingState.initial});

  final LoadingState loadingState;

  @override
  List<Object> get props => [loadingState];
}

class IssuesFailure extends IssuesState {}

class IssuesEmpty extends IssuesState {}

class IssuesLoaded extends IssuesState {
  IssuesLoaded({
    required this.issues,
    this.filter = 'all',
    this.sort = 'created',
    this.page = 1,
  });

  final List<IssueData> issues;
  final String filter;
  final String sort;
  final int page;

  @override
  List<Object> get props => [issues, filter, sort, page];
}
