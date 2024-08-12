import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  bool _isAuthenticated = false;

  bool get isAuthenticated => _isAuthenticated;

  Future<void> login(String username, String password) async {
    await Future.delayed(const Duration(seconds: 2));
    if (username == 'user' && password == '1234') {
      _isAuthenticated = true;
      notifyListeners();
    } else {
      throw Exception('Invalid credentials');
    }
  }
}
