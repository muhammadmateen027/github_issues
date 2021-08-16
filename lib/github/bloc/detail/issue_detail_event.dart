part of 'issue_detail_bloc.dart';

@immutable
abstract class IssueDetailEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class LoadIssueDetail extends IssueDetailEvent {
  LoadIssueDetail(this.issueId);

  final int issueId;

  @override
  List<Object> get props => [issueId];
}
