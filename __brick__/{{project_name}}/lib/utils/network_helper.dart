import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import '../providers/network_provider.dart';

class NetworkHelper {
  NetworkHelper({
    required this.networkProvider,
  });
  final NetworkProvider networkProvider;
  StreamSubscription? connectivity;
  Timer? _displayConnectNetwork;

  Future<void> init() async {
    if (connectivity != null) {
      connectivity = null;
    }
    ConnectivityResult connectivityResult =
        await Connectivity().checkConnectivity();
    _handleConnect(connectivityResult);
    connectivity = Connectivity().onConnectivityChanged.listen(_handleConnect);
  }

  void _stopConnectAlertTimer() {
    if (_displayConnectNetwork != null) {
      _displayConnectNetwork!.cancel();
      return;
    }
  }

  void dispose() {
    connectivity?.cancel();
    _displayConnectNetwork?.cancel();
  }

  void _startConnectAlertTimer(time) {
    if (_displayConnectNetwork != null) {
      _displayConnectNetwork!.cancel();
    }

    _displayConnectNetwork = Timer(Duration(seconds: time), () {
      networkProvider.connectState = ConnectState.CONNECT;
    });
  }

  void _handleConnect(ConnectivityResult connect) async {
    switch (connect) {
      case ConnectivityResult.none:
        bool isDeviceConnected =
            await InternetConnectionChecker().hasConnection;
        if (isDeviceConnected == false) {
          _stopConnectAlertTimer();
          networkProvider.isEnableNetwork = false;
          networkProvider.connectState = ConnectState.DISCONNECT;
        }
        break;
      case ConnectivityResult.wifi:
      case ConnectivityResult.mobile:
      default:
        if (networkProvider.connectState == ConnectState.DISCONNECT) {
          networkProvider.connectState = ConnectState.CONNECTING;
        }
        networkProvider.isEnableNetwork = true;
        _startConnectAlertTimer(5);

        break;
    }
  }
}
