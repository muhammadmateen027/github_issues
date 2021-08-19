import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:github_issues/github/github.dart';
import 'package:github_issues/repository/lib/model/issues/issue_data.dart';
import 'package:github_issues/l10n/l10n.dart';

class IssueDetail extends StatefulWidget {
  const IssueDetail({Key? key, required this.issueNumber}) : super(key: key);
  final int issueNumber;

  @override
  _IssueDetailState createState() => _IssueDetailState();
}

class _IssueDetailState extends State<IssueDetail> {
  @override
  void initState() {
    context.read<IssueDetailBloc>().add(LoadIssueDetail(widget.issueNumber));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final l10n = context.l10n;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.issueDetailLabel),
      ),
      body: BlocConsumer<IssueDetailBloc, IssueDetailState>(
        listener: (_, state) {},
        builder: (_, state) {
          if (state is IssueDetailLoading) {
            if (state.loadingState == LoadingState.initial) {
              return const Center(child: CircularProgressIndicator());
            }
            return const SizedBox();
          }

          if (state is IssueDetailLoaded) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.background,
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: theme.colorScheme.background,
                          blurRadius: 10.0,
                          spreadRadius: 5.0)
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 8),
                      Text(
                        state.issueData.title!,
                        style: textTheme.headline6,
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Text(
                            '${state.issueData.user!.login!} opened this issue at '
                            '${IssueData.formatDate(state.issueData.updated_at!)}',
                            style: textTheme.caption,
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      Html(data: state.issueData.body!),
                    ],
                  ),
                )
              ],
            );
          }
          return const SizedBox();
        },
      ),
    );
  }
}
