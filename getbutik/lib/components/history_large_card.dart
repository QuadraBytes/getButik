import 'package:flutter/material.dart';
import 'package:getbutik/consts/constants.dart';

class HistoryLargeCard extends StatelessWidget {
  const HistoryLargeCard({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Color.fromRGBO(224, 224, 224, 1),
      // height: 160,
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Container(
          color: lightgrey,
          height: 680,
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 5),
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 36, fontWeight: FontWeight.bold,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 15),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'assets/images.jpg',
                      height: 180,
                      width: 380,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 15),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'assets/images.jpg',
                      height: 180,
                      width: 380,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Brand',
                    style: TextStyle(
                      fontSize: 16,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Price',
                    style: TextStyle(
                      fontSize: 16,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Description',
                    style: TextStyle(
                      fontSize: 16,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centurie",
                    style: TextStyle(
                      fontSize: 13,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
