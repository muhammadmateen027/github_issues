import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class RefreshFooter extends StatelessWidget {
  const RefreshFooter({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return CustomFooter(
      builder: (BuildContext? context, LoadStatus? mode) {
        Widget body;
        switch (mode) {
          case LoadStatus.idle:
            body = const Text('pull up load');
            break;

          case LoadStatus.loading:
            body = const CupertinoActivityIndicator();
            break;

          case LoadStatus.failed:
            body = const Text('Load Failed!Click retry!');
            break;

          case LoadStatus.canLoading:
            body = const Text('release to load more');
            break;

          default:
            body = const Text('No more Data');
            break;
        }
        return Container(
          height: 55.0,
          margin: const EdgeInsets.only(bottom: 100),
          child: Center(child: body),
        );
      },
    );
  }

}