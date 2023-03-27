import 'package:flutter/cupertino.dart';

import '../constants/api_enum.dart';
import '../constants/constants.dart';
import '../model/user/user.dart';
import '../services/remote_service.dart';

enum LoginStatus { login, logout }

class UserProvider extends ChangeNotifier {
  UserProvider({
    required RemoteService remoteService,
  }) : _remoteService = remoteService;

  final RemoteService _remoteService;
  User? _user;
  LoginStatus _loginStatus = LoginStatus.logout;

  User? get user => _user;
  set user(User? user) {
    _user = user;
    notifyListeners();
  }

  LoginStatus get loginStatus => _loginStatus;
  set loginStatus(LoginStatus loginStatus) {
    _loginStatus = loginStatus;
    notifyListeners();
  }

  Future<void> _getUserInfo() async {
    final Map<String, dynamic> response =
        await _remoteService.get("$kBaseServerUrl${Api.USER_INFO.url}");
    _user = User.fromJson(response["data"]);
    notifyListeners();
  }

  Future<void> login() async {
    try {
      await _getUserInfo();
      _loginStatus = LoginStatus.login;
      notifyListeners();
    } catch (e) {
      logout();
    }
  }

  Future<void> logout() async {
    _user = null;
    _loginStatus = LoginStatus.logout;
    notifyListeners();
  }
}
