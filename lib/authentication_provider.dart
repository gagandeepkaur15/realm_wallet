import 'package:flutter/material.dart';
import 'package:realm/realm.dart';

class LoginRealm with ChangeNotifier {
  final app = App(AppConfiguration("application-0-cwoyh"));
  late User? user;

  Future register(String email, String password) async {
    try {
      EmailPasswordAuthProvider authProvider = EmailPasswordAuthProvider(app);
      await authProvider.registerUser(email, password);
      user = app.currentUser;
      notifyListeners();
      return user;
    } catch (e) {
      rethrow;
    }
  }

  Future login(String email, String password) async {
    try {
      final emailPwCredentials = Credentials.emailPassword(email, password);
      await app.logIn(emailPwCredentials);
      user = app.currentUser;
      notifyListeners();
      return user;
    } catch (e) {
      rethrow;
    }
  }

  Future logout() async {
    await user!.logOut();
    notifyListeners();
  }
}
