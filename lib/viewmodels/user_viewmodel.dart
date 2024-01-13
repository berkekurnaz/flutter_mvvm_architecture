import 'package:flutter/material.dart';
import '../services/api_service.dart';
import '../models/user.dart';

class UserViewModel extends ChangeNotifier {
  final ApiService apiService;

  UserViewModel({required this.apiService});

  bool isLoggedIn = false;

  Future<void> loginUser(User user) async {
    try {
      print(user.password);
      if (await apiService.loginUser(user)) {
        isLoggedIn = true;
      } else {
        isLoggedIn = false;
      }

      notifyListeners();
    } catch (e) {
      print('Error: $e');
    }
  }
}
