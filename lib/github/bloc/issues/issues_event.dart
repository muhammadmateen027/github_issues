part of 'issues_bloc.dart';

@immutable
abstract class IssuesEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class LoadIssues extends IssuesEvent {
  LoadIssues({this.page = 1});

  final int page;

  @override
  List<Object> get props => [page];
}

class FilterIssues extends IssuesEvent {
  FilterIssues({this.filterType, this.sortType});

  final Option? filterType;
  final Option? sortType;

  @override
  List<Object> get props => [filterType!, sortType!];
}