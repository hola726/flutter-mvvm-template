import 'package:flutter/cupertino.dart';

enum ConnectState {
  CONNECT,
  CONNECTING,
  DISCONNECT,
}

class NetworkProvider extends ChangeNotifier {
  bool _isEnableNetwork = true;
  ConnectState? _connectState;

  bool get isEnableNetwork => _isEnableNetwork;
  ConnectState? get connectState => _connectState;

  set isEnableNetwork(bool isEnableNetwork) {
    _isEnableNetwork = isEnableNetwork;
    notifyListeners();
  }

  set connectState(ConnectState? connectState) {
    _connectState = connectState;
    notifyListeners();
  }
}
