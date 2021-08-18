import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:github_issues/github/github.dart';
import 'package:github_issues/network/network.dart';
import 'package:github_issues/repository/lib/lib.dart';
import 'package:meta/meta.dart';

part 'issues_event.dart';

part 'issues_state.dart';

class IssuesBloc extends Bloc<IssuesEvent, IssuesState> {
  IssuesBloc({required this.repository}) : super(IssuesInitial()) {
    on<LoadIssues>(_loadIssues);

    on<FilterIssues>(_filterIssues);
  }

  final RepositoryService repository;

  void _loadIssues(LoadIssues event, Emit<IssuesState> emit) async {
    if (state is IssuesLoaded) {
      final currentState = (state as IssuesLoaded);
      try {
        emit(IssuesLoading(loadingState: LoadingState.more));

        final issues = await repository.loadIssues(
          filter: currentState.filter,
          sort: currentState.sort,
          page: (currentState.page + 1),
        );

        if (issues.isEmpty) {
          emit(IssuesLoading(loadingState: LoadingState.ends));
          return;
        }
        final lists = currentState.issues..addAll(issues);
        emit(IssuesLoaded(issues: lists));
        return;
      } on NetworkException {
        emit(IssuesFailure());
        return;
      }
    }

    emit(IssuesLoading());
    try {
      final issues = await repository.loadIssues(page: event.page);
      emit(IssuesLoaded(issues: issues));
      return;
    } on NetworkException {
      emit(IssuesFailure());
      return;
    }
  }

  void _filterIssues(FilterIssues event, Emit<IssuesState> emit) async {
    emit(IssuesLoaded(issues: const []));

    try {
      final issues = await repository.loadIssues(
        sort: (event.sortType != null) ? event.sortType!.value :'created',
        filter: (event.filterType != null) ? event.filterType!.value :'all',
      );

      emit(IssuesLoaded(issues: issues));
      return;
    } on NetworkException {
      emit(IssuesFailure());
      return;
    }
  }
}

class Option {
  const Option({required this.value, required this.text});

  final String value;
  final String text;
}
