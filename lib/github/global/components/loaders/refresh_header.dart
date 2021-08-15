import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class RefreshHeader extends StatelessWidget {
  const RefreshHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialClassicHeader(
      height: 90,
      distance: 100,
    );
  }
}