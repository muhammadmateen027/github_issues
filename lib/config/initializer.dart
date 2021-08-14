import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' hide Image;
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get_it/get_it.dart';
import 'package:github_issues/network/network.dart';
import 'package:github_issues/repository/repository.dart';

GetIt locator = GetIt.instance;

class Initialization {
  // check either it's debug or release mode
  static const bool enableLogging = !kDebugMode;

  static Future<void>init() async {
    WidgetsFlutterBinding.ensureInitialized();

    // Load environment file
    await dotenv.load(fileName: ".env");

    // Initialize EasyLoading
    // NOTE: It's a way how usually we handle things in interceptors
    // and builders
    _configEasyLoading();

    final _dio = Dio(BaseOptions(baseUrl: dotenv.env['API_URL']!));
    _dio.interceptors.add(
      LogInterceptor(requestBody: true, responseBody: true),
    );

    // enable network interceptor for logs in debug mode
    if (kDebugMode) {
      _dio.interceptors.add(LoggingInterceptors());
    }

    // dependency injection as a lazy singleton class for repository
    locator
      .registerLazySingleton<RepositoryService>(
        () => AppRepository(client: NetworkClient(dio: _dio)),
      );
  }

  // Initialize a full screen loader in the app
  static void _configEasyLoading() {
    EasyLoading.instance
      ..loadingStyle = EasyLoadingStyle.custom
      ..indicatorSize = 45.0
      ..radius = 10.0
      ..progressColor = Colors.white
      ..backgroundColor = Colors.black.withOpacity(0.5)
      ..indicatorColor = Colors.white
      ..textColor = Colors.white
      ..maskColor = Colors.red.withOpacity(0.5)
      ..userInteractions = false
      ..dismissOnTap = false
      ..toastPosition = EasyLoadingToastPosition.bottom;
  }
}
