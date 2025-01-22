class ApiEndpoints {
  // Base URL of your API
  static const String baseUrl = 'http://localhost:5000/api';

  // Specific endpoints
  static const String allUsers = '/users';
  static String userProfile(String userId) =>
      '/users/$userId'; // Dynamic endpoint

  // Other endpoints
  static const String createUser = '/users/create';
  static String updateUser(String userId) => '/users/update/$userId';
  static String deleteUser(String userId) => '/users/delete/$userId';

  // Add more endpoints as needed
}
