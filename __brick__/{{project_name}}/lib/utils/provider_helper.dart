import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/data_provider.dart';
import '../providers/network_provider.dart';
import '../providers/user_provider.dart';
import '../services/remote_service.dart';

class ProviderHelper {
  static Widget setProvider(Widget app) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<DataProvider>(
          create: (_) => DataProvider(),
        ),
        ChangeNotifierProvider<NetworkProvider>(
          create: (_) => NetworkProvider(),
        ),
        ChangeNotifierProvider<UserProvider>(
          create: (_) => UserProvider(
            remoteService: RemoteService(),
          ),
        ),
      ],
      child: app,
    );
  }
}
