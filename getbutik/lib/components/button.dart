import 'package:flutter/material.dart';
import 'package:getbutik/consts/constants.dart';

class Button extends StatelessWidget {
  const Button(
      {super.key,
      required this.title,
      required this.icon,
      required this.onClick});

  final String title;
  final IconData icon;
  final Function onClick;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => onClick(),
      child: Row(
        children: [
          Icon(
            icon,
            color: black,
          ),
          SizedBox(width: 10),
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: black,
            ),
          ),
        ],
      ),
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(horizontal: 20, vertical: 5)),
        backgroundColor: MaterialStateProperty.all(yellow),
      ),
    );
  }
}
