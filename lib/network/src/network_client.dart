import 'package:dio/dio.dart';

import 'exceptions/exceptions.dart';

/// This is clent class where we will add all required methods like
/// GET, PUT, POST, PATCH, etc
class NetworkClient {
  /// Network client required dio as a parameter after initializing
  const NetworkClient({required this.dio});

  /// this Dio will be required
  final Dio dio;


  /// whenever we are require to call a GET method, we will use this function.
  /// We have flexibility to add other params
  Future<Response> get(
      String url,
      String? token, {
        Map<String, dynamic>? queryParameters,
        Options? options,
        CancelToken? cancelToken,
        ProgressCallback? onReceiveProgress,
      }) async {
    try {
      return await dio.get(
        url,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );
    } on DioError catch (error) {
      throw NetworkException(error);
    }
  }
}
