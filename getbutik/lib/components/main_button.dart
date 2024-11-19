import 'package:flutter/material.dart';
import 'package:getbutik/consts/constants.dart';

class MainButton extends StatelessWidget {
  const MainButton({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        title,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: black,
        ),
      ),
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(horizontal: 60, vertical: 5)),
        backgroundColor:
            MaterialStateProperty.all(yellow),
      ),
    );
  }
}