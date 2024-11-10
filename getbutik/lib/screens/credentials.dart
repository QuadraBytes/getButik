import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CredentialsScreen extends StatelessWidget {
  const CredentialsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: const Text('Credentials'),
      ),
      body: const Placeholder(),
    ));
  }
}