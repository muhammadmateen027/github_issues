import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_issues/github/github.dart';
import 'package:github_issues/github/global/global.dart';
import 'package:github_issues/routes/routes.dart';

class FilterView extends StatefulWidget {
  const FilterView({Key? key}) : super(key: key);

  @override
  _FilterViewState createState() => _FilterViewState();
}

class _FilterViewState extends State<FilterView> {
  final filters = <Option>[];
  final sort = <Option>[];

  Option? selectedSort;
  Option? selectedFilter;

  @override
  void initState() {
    _filtersTypes();
    _sortingTypes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32.0),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8, 8, 8, 42),
        child: Wrap(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ButtonPills(
                    onTap: navigationService.pop,
                    label: 'Close',
                    backgroundColor: theme.errorColor,
                    textColor: Colors.white,
                  ),
                  ButtonPills(
                    onTap: filterJobs,
                    label: 'Done',
                    backgroundColor: theme.primaryColor,
                    textColor: Colors.white,
                  ),
                ],
              ),
            ),
            Text(
              'Filter with:',
              style: theme.textTheme.headline6,
            ),
            _filterView(filters),
            Text(
              'Sort as: ',
              style: theme.textTheme.headline6,
            ),
            _sortingView(),
          ],
        ),
      ),
    );
  }

  Widget _filterView(List<Option> list) {
    return Wrap(
      spacing: 6.0,
      runSpacing: 6.0,
      children: List<Widget>.generate(list.length, (int index) {
        return ChoiceChip(
          label: Text(list[index].text),
          selected: (selectedFilter == list[index]),
          onSelected: (value) {
            setState(() => (selectedFilter = list[index]));
          },
        );
      }),
    );
  }

  Widget _sortingView() {
    return Padding(
      padding: const EdgeInsets.only(top: 32),
      child: Wrap(
        alignment: WrapAlignment.start,
        spacing: 6.0,
        runSpacing: 6.0,
        children: List<Widget>.generate(sort.length, (int index) {
          return ChoiceChip(
            label: Text(sort[index].text),
            selected: (selectedSort == sort[index]),
            onSelected: (value) {
              setState(() => (selectedSort = sort[index]));
            },
          );
        }),
      ),
    );
  }

  void _filtersTypes() {
    filters
      ..add(const Option(value: 'assigned', text: 'Assigned'))
      ..add(const Option(value: 'created', text: 'Created'))
      ..add(const Option(value: 'mentioned', text: 'Mentioned'))
      ..add(const Option(value: 'subscribed', text: 'Subscribed'))
      ..add(const Option(value: 'repos', text: 'Repos'))
      ..add(const Option(value: 'all', text: 'All'));
    return;
  }

  void _sortingTypes() {
    sort
      ..add(const Option(value: 'created', text: 'Created'))
      ..add(const Option(value: 'updated', text: 'Updated'))
      ..add(const Option(value: 'comments', text: 'Comments'));
    return;
  }

  void filterJobs() {
    context.read<IssuesBloc>().add(
          FilterIssues(filterType: selectedFilter, sortType: selectedSort),
        );
    navigationService.pop();
  }
}
