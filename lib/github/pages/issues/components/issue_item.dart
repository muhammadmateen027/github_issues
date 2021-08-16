import 'package:flutter/material.dart';
import 'package:github_issues/repository/lib/lib.dart';
import 'package:github_issues/routes/navigation_service.dart';
import 'package:github_issues/routes/routes.dart';

class IssueItem extends StatelessWidget {
  const IssueItem({Key? key, required this.issueData}) : super(key: key);
  final IssueData issueData;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return GestureDetector(
      onTap: () {
        navigationService.pushNamed(
          RoutesName.detail,
          arguments: issueData.number,
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 2),
        decoration: BoxDecoration(
          color: theme.colorScheme.background,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: theme.colorScheme.onBackground,
              spreadRadius: 0.4,
              blurRadius: 5.0,
            )
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              child: Center(
                child: Icon(
                  Icons.adjust,
                  color: theme.primaryColor,
                ),
              ),
            ),
            Flexible(
              flex: 7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    issueData.title!,
                    maxLines: 1,
                    style: theme.textTheme.bodyText1,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    issueData.body!,
                    maxLines: 1,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '#${issueData.number!} opened at '
                    '${IssueData.formatDate(issueData.updated_at!)}',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
