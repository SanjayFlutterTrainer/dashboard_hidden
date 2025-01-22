import 'package:dio/dio.dart';
import 'package:etra/models/userModel.dart';
import 'package:etra/core/exceptions/api_exceptions.dart';
import 'package:etra/core/constants/api_endpoints.dart';

class UserRepository {
  final Dio dio;

  UserRepository(this.dio);

  Future<List<UserModel>> getAllUsers() async {
    try {
      final response = await dio.get(ApiEndpoints.baseUrl + ApiEndpoints.allUsers);

      if (response.statusCode == 200) {
        List<UserModel> users = (response.data as List)
            .map((data) => UserModel.fromJson(data))
            .toList();
        return users;
      } else {
        throw ApiException('Failed to load users');
      }
    } catch (e) {
      throw ApiException('Error fetching users: $e');
    }
  }

  Future<UserModel> getUserProfile(String userId) async {
    try {
      final response = await dio.get(ApiEndpoints.baseUrl + ApiEndpoints.userProfile(userId));

      if (response.statusCode == 200) {
        return UserModel.fromJson(response.data);
      } else {
        throw ApiException('Failed to load user profile');
      }
    } catch (e) {
      throw ApiException('Error fetching user profile: $e');
    }
  }
}
