import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:github_issues/l10n/l10n.dart';

import 'components/components.dart';

class IssuesPage extends StatefulWidget {
  const IssuesPage({Key? key}) : super(key: key);

  @override
  _IssuesPageState createState() => _IssuesPageState();
}

class _IssuesPageState extends State<IssuesPage> {
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.issuesLabel),
        leading: _themeSwitcherButton(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: showFilter,
        child: const Icon(Icons.filter_list),
      ),
      body: const IssuesList(),
    );
  }

  Widget _themeSwitcherButton() {
    return IconButton(
      icon: const Icon(Icons.dark_mode),
      onPressed: () {
        AdaptiveTheme.of(context).toggleThemeMode();
      },
    );
  }

  void showFilter() {
    showModalBottomSheet<void>(
      context: context,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      builder: (_) => const FilterView(),
    );
  }
}
