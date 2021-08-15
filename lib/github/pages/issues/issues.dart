import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_issues/github/github.dart';

import 'components/components.dart';

class IssuesPage extends StatelessWidget {
  const IssuesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Issues'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          context.read<IssuesBloc>().add(LoadIssues());
        },
        child: const Icon(Icons.done),
      ),

      body: const IssuesList(),
    );
  }
}
