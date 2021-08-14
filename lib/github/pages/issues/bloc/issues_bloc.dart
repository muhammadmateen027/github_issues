import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:github_issues/network/network.dart';
import 'package:github_issues/repository/lib/lib.dart';
import 'package:meta/meta.dart';

part 'issues_event.dart';
part 'issues_state.dart';

class IssuesBloc extends Bloc<IssuesEvent, IssuesState> {
  IssuesBloc({required this.repository}) : super(IssuesInitial()) {
    on<LoadIssues>(_loadIssues);
  }

  final RepositoryService repository;

  void _loadIssues(LoadIssues event, Emit<IssuesState> emit) async {
    emit(IssuesLoading());

    try {
      final issues = await repository.loadIssues();
    } on NetworkException catch (error) {
    }
  }
}
