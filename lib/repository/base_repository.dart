import 'package:dio/dio.dart';
import '../core/config/dio_config.dart';

class BaseRepository {
  final Dio dio = DioConfig.createDio();
}
