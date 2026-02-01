import 'dart:developer';

import 'package:dio/dio.dart';

class DioClient {
  static final DioClient _instance = DioClient._internal();
  factory DioClient() => _instance;

  late final Dio dio;

  DioClient._internal() {
    dio = Dio(
      BaseOptions(
        baseUrl: 'https://api.lastindus.com',
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
        headers: {'Content-Type': 'application/json'},
      ),
    );

    dio.interceptors.add(
      InterceptorsWrapper(
        onError: (error, handler) {
          log(
            '[API Error] ${error.requestOptions.method} ${error.requestOptions.path}',
            name: 'DioClient',
            error: error,
          );
          log(
            'Status: ${error.response?.statusCode}, Message: ${error.message}',
            name: 'DioClient',
          );
          handler.next(error);
        },
      ),
    );
  }
}
