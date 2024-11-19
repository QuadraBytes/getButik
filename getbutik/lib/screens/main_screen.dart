import 'package:flutter/material.dart';
import 'package:getbutik/components/side_bar.dart';
import 'package:getbutik/screens/landing.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();

  void _navigateTo(Widget screen) {
    _navigatorKey.currentState?.pushReplacement(
      MaterialPageRoute(builder: (context) => screen),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SideBar(
            onItemSelected: (screen) => _navigateTo(screen),
          ),
          Expanded(
            child: Navigator(
              key: _navigatorKey,
              onGenerateRoute: (settings) => MaterialPageRoute(
                builder: (context) => const LandingScreen(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
