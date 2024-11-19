import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:getbutik/components/key_list.dart';
import 'package:getbutik/components/main_button.dart';
import 'package:getbutik/components/topic.dart';
import 'package:getbutik/components/input_container.dart';

class CredentialsScreen extends StatelessWidget {
  const CredentialsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      // appBar: AppBar(
      //   title: const Text('Credentials'),
      // ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Topic(title: "Credentials"),
                    SizedBox(height: 20),
                    Text(
                      'Key List',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    KeyListContainer(),
                    SizedBox(height: 20),
                    KeyListContainer(),
                    SizedBox(height: 20),
                    KeyListContainer(),
                    SizedBox(height: 20),
                    // KeyListContainer(),
                    SizedBox(height: 20),
                  ]),
            ),
            SizedBox(width: 40),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 60),
                  Text(
                    'Add New Key',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 30),
                  InputContainer(title: 'Key'),
                  SizedBox(height: 10),
                  InputContainer(title: 'Key Name'),
                  SizedBox(height: 20),
                  Center(
                    child: MainButton(
                      title: 'Save Key',
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
