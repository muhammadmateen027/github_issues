import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';

import 'package:github_issues/app/app.dart';
import 'config/config.dart';

void main() async {
  Bloc.observer = AppBlocObserver();
  await Initialization.init();

  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  runZonedGuarded(
        () => runApp(const App()),
        (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
}
