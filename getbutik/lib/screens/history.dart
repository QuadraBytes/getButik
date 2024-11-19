import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:getbutik/components/topic.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      // appBar: AppBar(
      //   title: const Text('Items History'),
      // ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 Topic(title: "History"),
                  SizedBox(height: 20),
                  Container(
                    // color: Color.fromRGBO(224, 224, 224, 1),
                    // height: 160,
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Container(
                        color: Color.fromRGBO(224, 224, 224, 1),
                        height: 150,
                        padding: EdgeInsets.all(12),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.asset(
                                      'assets/images.jpg',
                                      height: 120,
                                      width: 180,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 5),
                            Expanded(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 9),
                                Text(
                                  'Item 1',
                                  style: TextStyle(
                                      fontSize: 16, fontWeight: FontWeight.bold
                                      // fontWeight: FontWeight.bold,
                                      ),
                                ),
                                SizedBox(height: 7),
                                Text(
                                  'Brand',
                                  style: TextStyle(
                                    fontSize: 16,
                                    // fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 7),
                                Text(
                                  'Price',
                                  style: TextStyle(
                                    fontSize: 16,
                                    // fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 7),
                              ],
                            ))
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    // color: Color.fromRGBO(224, 224, 224, 1),
                    // height: 160,
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Container(
                        color: Color.fromRGBO(224, 224, 224, 1),
                        height: 150,
                        padding: EdgeInsets.all(12),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.asset(
                                      'assets/images.jpg',
                                      height: 120,
                                      width: 180,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 5),
                            Expanded(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 5),
                                Text(
                                  'Item 2',
                                  style: TextStyle(
                                      fontSize: 16, fontWeight: FontWeight.bold
                                      // fontWeight: FontWeight.bold,
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
                              ],
                            ))
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    // color: Color.fromRGBO(224, 224, 224, 1),
                    // height: 160,
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Container(
                        color: Color.fromRGBO(224, 224, 224, 1),
                        height: 150,
                        padding: EdgeInsets.all(12),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.asset(
                                      'assets/images.jpg',
                                      height: 120,
                                      width: 180,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 5),
                            Expanded(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 5),
                                Text(
                                  'Item 3',
                                  style: TextStyle(
                                      fontSize: 16, fontWeight: FontWeight.bold
                                      // fontWeight: FontWeight.bold,
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
                              ],
                            ))
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    // color: Color.fromRGBO(224, 224, 224, 1),
                    // height: 160,
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Container(
                        color: Color.fromRGBO(224, 224, 224, 1),
                        height: 150,
                        padding: EdgeInsets.all(12),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.asset(
                                      'assets/images.jpg',
                                      height: 120,
                                      width: 180,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 5),
                            Expanded(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 5),
                                Text(
                                  'Item 4',
                                  style: TextStyle(
                                      fontSize: 16, fontWeight: FontWeight.bold
                                      // fontWeight: FontWeight.bold,
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
                              ],
                            ))
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 40),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 70),
                  Container(
                    // color: Color.fromRGBO(224, 224, 224, 1),
                    // height: 160,
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Container(
                        color: Color.fromRGBO(224, 224, 224, 1),
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
                                  'Item 2',
                                  style: TextStyle(
                                      fontSize: 36, fontWeight: FontWeight.bold
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
                  ),
                  SizedBox(height: 10),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
