part of 'issues_bloc.dart';

@immutable
abstract class IssuesEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class LoadIssues extends IssuesEvent {

}