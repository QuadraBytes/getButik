import 'package:flutter/material.dart';
import 'package:getbutik/consts/constants.dart';

class SideBarButton extends StatelessWidget {
  const SideBarButton(
      {super.key,
      required this.title,
      required this.onClick,
      required this.selectedIndex,
      required this.index,
      required this.icon});

  final String title;
  final int selectedIndex;
  final Function onClick;
  final int index;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        size: 30,
      ),
      title: Text(title,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      tileColor: selectedIndex == index ? grey : null,
      onTap: () => onClick(),
    );
  }
}
