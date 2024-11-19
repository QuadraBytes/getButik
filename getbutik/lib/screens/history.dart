import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:getbutik/components/history_large_card.dart';
import 'package:getbutik/components/history_small_card.dart';
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
                  HistorySmallCard(title: 'Item 1'),
                  SizedBox(height: 20),
                  HistorySmallCard(title: 'Item 2'),
                  SizedBox(height: 20),
                  HistorySmallCard(title: 'Item 3'),
                  SizedBox(height: 20),
                  HistorySmallCard(title: 'Item 4'),
                ],
              ),
            ),
            SizedBox(width: 40),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 70),
                  HistoryLargeCard(title: 'Item 4'),
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
