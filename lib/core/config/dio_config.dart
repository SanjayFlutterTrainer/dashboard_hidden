import 'package:dio/dio.dart';

class DioConfig { 
  static Dio createDio() {
    final dio = Dio(
      BaseOptions(
        baseUrl: 'https://api.example.com',
        connectTimeout: Duration(milliseconds: 5000),
        receiveTimeout: Duration(milliseconds: 3000),
      ),
    );

    dio.interceptors.add(LogInterceptor(
      responseBody: true,
      requestBody: true,
    ));

    return dio;
  }
}
