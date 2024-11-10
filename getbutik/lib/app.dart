import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:getbutik/screens/main_screen.dart';
import 'package:stacked_services/stacked_services.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'GeButIK',
      debugShowCheckedModeBanner: false,
      navigatorKey: StackedService.navigatorKey,
      home: const MainScreen(),
    );
  }
}
