import 'package:flutter/material.dart';
import 'package:etra/repository/user_repository.dart';
import 'package:etra/models/userModel.dart';
import 'package:dio/dio.dart';

class UserProvider extends ChangeNotifier {
  final UserRepository _userRepository;

  UserProvider(Dio dio) : _userRepository = UserRepository(dio);

  Future<List<UserModel>> fetchUsers() async {
    try {
      return await _userRepository.getAllUsers();
    } catch (e) {
      debugPrint('Error fetching users: $e');
      rethrow;
    }
  }
}
