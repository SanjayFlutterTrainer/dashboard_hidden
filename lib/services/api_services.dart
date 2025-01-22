import 'package:dio/dio.dart';
import '../core/config/dio_config.dart';
import '../core/exceptions/api_exceptions.dart';
import '../core/constants/api_endpoints.dart';

class ApiService {
  final Dio dio = DioConfig.createDio();

  Future<Response> request(
      String endpoint, {
        required String method,
        Map<String, dynamic>? data,
      }) async {
    try {
      Response response;
      if (method == 'GET') {
        response = await dio.get(endpoint);
      } else if (method == 'POST') {
        response = await dio.post(endpoint, data: data);
      } else {
        throw ApiException('Method not supported');
      }
      
      return response;
    } catch (e) {
      throw ApiException('Error in API call: $e');
    }
  }
}
