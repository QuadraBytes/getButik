import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
                ListTile(
                  leading: const Icon(
                    Icons.add,
                    size: 30,
                  ),
                  title: const Text('Add Item',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  tileColor: selectedIndex == 0
                      ? Color.fromRGBO(217, 217, 217, 1)
                      : null,
                  onTap: () => onItemTap(0, const LandingScreen()),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.history,
                    size: 30,
                  ),
                  title: const Text('History',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  tileColor: selectedIndex == 1
                      ? const Color.fromRGBO(217, 217, 217, 1)
                      : null,
                  onTap: () => onItemTap(1, const HistoryScreen()),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.key,
                    size: 30,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  title: const Text('Credentials',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
                  tileColor: selectedIndex == 2
                      ? const Color.fromRGBO(217, 217, 217, 1)
                      : null,
                  onTap: () => onItemTap(2, const CredentialsScreen()),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
