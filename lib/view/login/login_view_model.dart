import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class LoginViewModel extends ChangeNotifier {
  String _email = '';
  String _password = '';
  bool _isLoggedIn = false;
  String _errorMessage = '';

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String get email => _email;
  String get password => _password;
  bool get isLoggedIn => _isLoggedIn;
  String get errorMessage => _errorMessage;

  void setEmail(String email) {
    _email = email;
  }

  void setPassword(String password) {
    _password = password;
  }

  void setErrorMessage(String message) {
    _errorMessage = message;
    notifyListeners();
  }

  void resetTextFields() {
    emailController.clear();
    passwordController.clear();
  }

  void login() async {
    // E-posta ve şifre kontrolü, giriş işlemini gerçekleştirmek için kullanılabilir.
    if (_email.isEmpty || _password.isEmpty) {
      setErrorMessage('E-posta ve şifre alanları boş bırakılamaz.');
      return;
    }

    // Burada giriş işlemi gerçekleştirilebilir.
    // Örnek olarak sadece basit bir eşleştirme kontrolü yapılıyor.
    if (_email == 'test@example.com' && _password == 'password') {
      _isLoggedIn = true;
      setErrorMessage('');
    } else {
      _isLoggedIn = false;
      setErrorMessage('E-posta veya şifre hatalı.');
    }
  }
}
