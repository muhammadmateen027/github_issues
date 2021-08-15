part of 'issues_bloc.dart';

@immutable
abstract class IssuesState extends Equatable {
  @override
  List<Object> get props => [];
}

class IssuesInitial extends IssuesState {}

class IssuesLoading extends IssuesState {}

class IssuesEmpty extends IssuesState {}

class IssuesLoaded extends IssuesState {
  IssuesLoaded({required this.issues});

  final List<IssueData> issues;

  @override
  List<Object> get props => [issues];
}