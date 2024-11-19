import 'package:flutter/material.dart';

class Topic extends StatelessWidget {
  const Topic({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
    );
  }
}
