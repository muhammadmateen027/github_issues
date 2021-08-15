import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:github_issues/github/github.dart';
import 'package:github_issues/github/global/global.dart';
import 'package:github_issues/repository/repository.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'issue_item.dart';

class IssuesList extends StatefulWidget {
  const IssuesList({Key? key}) : super(key: key);

  @override
  _IssuesListState createState ()=> _IssuesListState();
}

class _IssuesListState extends State<IssuesList> {
  late RefreshController _refreshController;

  late IssuesBloc issuesBloc;

  @override
  void initState() {
    _refreshController = RefreshController();
    issuesBloc = context.read<IssuesBloc>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<IssuesBloc, IssuesState>(
      listener: (_, state) {
        // if (state is EmptyJobs) {
        //   _refreshController.resetNoData();
        //   return;
        // }
        //
        // if (state is JobsFailure) {
        //   _refreshController.loadComplete();
        //   return;
        // }
        //
        // if (state is JobsLoaded) {
        //   if (state.reachedMaximum) {
        //     _refreshController.loadNoData();
        //   } else {
        //     _refreshController.loadComplete();
        //   }
        //
        //   return;
        // }
      },
      buildWhen: (pre, curr) {
        if (pre is IssuesLoaded || curr is IssuesLoaded) {
          return true;
        }

        return false;
      },
      builder: (_, state) {
        if (state is IssuesLoaded) {
          return SmartRefresher(
            enablePullDown: true,
            enablePullUp: true,
            header: const RefreshHeader(),
            footer: const RefreshFooter(),
            controller: _refreshController,
            onRefresh: _onRefresh,
            onLoading: _onLoading,
            child: _getList(state.issues),
          );
        }
        return const SizedBox();
      },
    );
  }

  Widget _getList(List<IssueData> issues) {
    return AnimationLimiter(
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: issues.length,
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
        separatorBuilder: (_, i) => const SizedBox(height: 8.0),
        itemBuilder: (_, index) {
          return AnimationConfiguration.staggeredList(
            position: index,
            duration: const Duration(milliseconds: 375),
            child: SlideAnimation(
              verticalOffset: 50.0,
              child: FadeInAnimation(
                child: IssueItem(issueData: issues[index]),
              ),
            ),
          );
        },
      ),
    );
  }

  void _onRefresh() async {
    issuesBloc.add(LoadIssues());
  }

  void _onLoading() async {
    issuesBloc.add(LoadIssues());
  }

}
