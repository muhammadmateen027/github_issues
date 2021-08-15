import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:github_issues/config/config.dart';
import 'package:github_issues/github/github.dart';
import 'package:github_issues/repository/lib/lib.dart';
import 'package:github_issues/routes/routes.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: locator<RepositoryService>(),
      child: MultiBlocProvider(
        providers: [
          BlocProvider<IssuesBloc>(
            create: (_) => IssuesBloc(
              repository: locator<RepositoryService>(),
            )..add(LoadIssues()),
          ),
        ],
        child: MaterialApp(
          theme: ThemeData(
            accentColor: const Color(0xFF13B9FF),
            appBarTheme: const AppBarTheme(color: Color(0xFF13B9FF)),
          ),
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
          ],
          debugShowCheckedModeBanner: false,
          // Added builder for toast and loading indicator
          builder: EasyLoading.init(builder: BotToastInit()),
          supportedLocales: AppLocalizations.supportedLocales,
          // Set initial route name
          initialRoute: RoutesName.initial,
          //register navigator key to access in the app
          navigatorKey: navigationService.navigationKey,
          onGenerateRoute: RouteGenerator.generateRoute,
        ),
      ),
    );
  }
}
