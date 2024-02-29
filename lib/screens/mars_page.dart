import 'package:flutter/material.dart';

class MarsPage extends StatelessWidget {
  static const String id = 'Mars Page';
  const MarsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Mars'),
      ),
    );
  }
}
