import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:getbutik/components/side_bar_button.dart';
import 'package:getbutik/screens/credentials.dart';
import 'package:getbutik/screens/history.dart';
import 'package:getbutik/screens/landing.dart';

class SideBar extends StatefulWidget {
  final Function(Widget) onItemSelected;

  const SideBar({super.key, required this.onItemSelected});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  int selectedIndex = 0;

  void onItemTap(int index, Widget screen) {
    setState(() {
      selectedIndex = index;
    });
    widget.onItemSelected(screen);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.2,
      decoration: BoxDecoration(
        border: Border.fromBorderSide(
          BorderSide(
            color: Colors.grey,
            width: 1,
          ),
        ),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            margin: const EdgeInsets.only(top: 30),
            child: Column(
              children: [
                ClipRRect(
                  child: Image.asset(
                    "assets/logo.png",
                    fit: BoxFit.contain,
                    width: size.width * 0.1,
                  ),
                ),
                SizedBox(height: 10),
                ClipRRect(
                  child: Image.asset(
                    "assets/app_name.png",
                    fit: BoxFit.contain,
                    width: size.width * 0.175,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                const Divider(),
                SizedBox(height: 10),
                SideBarButton(
                  title: 'Add Item',
                  icon: Icons.add,
                  onClick: () {
                    onItemTap(0, const LandingScreen());
                  },
                  selectedIndex: selectedIndex,
                  index: 0,
                ),
                SizedBox(height: 5),
                SideBarButton(
                  title: 'History',
                  icon: Icons.history,
                  onClick: () {
                    onItemTap(1, const HistoryScreen());
                  },
                  selectedIndex: selectedIndex,
                  index: 1,
                ),
                SizedBox(height: 5),
                SideBarButton(
                  title: 'Credentials',
                  icon: Icons.person,
                  onClick: () {
                    onItemTap(2, const CredentialsScreen());
                  },
                  selectedIndex: selectedIndex,
                  index: 2,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

