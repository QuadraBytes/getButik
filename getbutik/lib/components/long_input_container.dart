import 'package:flutter/material.dart';
import 'package:getbutik/consts/constants.dart';

class LongInputContainer extends StatelessWidget {
  const LongInputContainer({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          TextField(
            maxLines: 8,
            decoration: InputDecoration(
              fillColor: lightgrey,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none),
              filled: true,
            ),
          ),
        ],
      ),
    );
  }
}