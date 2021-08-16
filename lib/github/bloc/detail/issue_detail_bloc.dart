
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:github_issues/github/github.dart';
import 'package:github_issues/network/network.dart';
import 'package:github_issues/repository/lib/lib.dart';
import 'package:github_issues/repository/repository.dart';
import 'package:meta/meta.dart';

part 'issue_detail_event.dart';
part 'issue_detail_state.dart';

class IssueDetailBloc extends Bloc<IssueDetailEvent, IssueDetailState> {
  IssueDetailBloc(this.repository) : super(IssueDetailInitial()) {
    // Load issue detail.
    on<LoadIssueDetail>(_loadIssueDetail);
  }

  final RepositoryService repository;

  void _loadIssueDetail(
      LoadIssueDetail event, Emit<IssueDetailState> emit) async {
    emit(IssueDetailLoading());
    try {
      final response = await repository.loadIssueDetail(event.issueId);

      emit(IssueDetailLoaded(response));
      return;
    } on NetworkException {
      return;
    }
  }
}
