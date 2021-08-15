import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_issues/github/github.dart';

import 'components/components.dart';

class IssuesPage extends StatefulWidget {
  const IssuesPage({Key? key}) : super(key: key);

  @override
  _IssuesPageState createState() => _IssuesPageState();
}

class _IssuesPageState extends State<IssuesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Issues'),
        leading: _themeSwitcherButton(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<IssuesBloc>().add(LoadIssues());
        },
        child: const Icon(Icons.done),
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
}
