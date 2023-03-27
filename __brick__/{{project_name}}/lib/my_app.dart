import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mvvm_boilerplate/providers/network_provider.dart';
import 'package:flutter_mvvm_boilerplate/utils/network_helper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'constants/constants.dart';
import 'constants/localization_enum.dart';
import 'routes/router.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  late final _networkHelper = NetworkHelper(
    networkProvider: context.read<NetworkProvider>(),
  );

  @override
  void initState() {
    super.initState();
    init();
  }

  @override
  void dispose() {
    _networkHelper.dispose();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  void init() async {
    WidgetsBinding.instance.addObserver(this);
    await _networkHelper.init();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) async {
    super.didChangeAppLifecycleState(state);
    _networkHelper.init();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return ScreenUtilInit(
      designSize: const Size(kRatioBaseWidth, kRatioBaseHeight),
      builder: (_, __) => MaterialApp.router(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        routerConfig: router,
        theme: ThemeData(scaffoldBackgroundColor: Colors.white),
        builder: (context, mainWidget) {
          return Consumer<NetworkProvider>(
            builder: (_, networkProvider, __) => Stack(
              children: [
                mainWidget!,
                if (networkProvider.connectState == ConnectState.DISCONNECT ||
                    networkProvider.connectState == ConnectState.CONNECTING)
                  Column(
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: SizedBox(
                          height: MediaQuery.of(context).padding.top,
                          child: Material(
                            child: Container(),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: SizedBox(
                          height: 45.h,
                          child: Material(
                            color: const Color(0xff5e5e5e),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                networkProvider.connectState ==
                                        ConnectState.CONNECTING
                                    ? Localization.CONNECT_NETWORK.local()
                                    : Localization.CHECK_NETWORK.local(),
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  color: Color(0xffd5d5d5),
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}
