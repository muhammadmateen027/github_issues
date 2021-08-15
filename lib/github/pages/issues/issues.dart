import 'dart:developer';

import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_issues/app/theme_config.dart';
import 'package:github_issues/github/github.dart';

import 'components/components.dart';

class IssuesPage extends StatelessWidget {
  const IssuesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeSwitcher = ThemeSwitcher(
      clipper: const ThemeSwitcherBoxClipper(),
      builder: (context) {
        return IconButton(
          icon: const Icon(Icons.dark_mode),
          onPressed: () {
            final brightness = ThemeProvider.of(context)!.brightness;

            ThemeSwitcher.of(context)!.changeTheme(
              theme: brightness == Brightness.light ? darkTheme : lightTheme,
              reverseAnimation: brightness == Brightness.dark ? true : false,
            );
            log('done');
          },
        );
      },
    );

    return ThemeSwitchingArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Issues'),
          leading: themeSwitcher,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.read<IssuesBloc>().add(LoadIssues());
          },
          child: const Icon(Icons.done),
        ),
        body: const IssuesList(),
      ),
    );
  }
}
