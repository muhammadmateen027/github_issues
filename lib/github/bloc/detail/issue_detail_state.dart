part of 'issue_detail_bloc.dart';

@immutable
abstract class IssueDetailState extends Equatable {
  @override
  List<Object?> get props => [];
}

class IssueDetailInitial extends IssueDetailState {}

class IssueDetailLoading extends IssueDetailState {
  IssueDetailLoading({this.loadingState = LoadingState.initial});

  final LoadingState loadingState;

  @override
  List<Object> get props => [loadingState];
}

class IssueDetailFailure extends IssueDetailState {}

class IssueDetailLoaded extends IssueDetailState {
  IssueDetailLoaded(this.issueData);

  final IssueData issueData;

  @override
  List<Object> get props => [issueData];
}
