part of 'issues_bloc.dart';

@immutable
abstract class IssuesState extends Equatable {
  @override
  List<Object> get props => [];
}

class IssuesInitial extends IssuesState {}

class IssuesLoading extends IssuesState {}
