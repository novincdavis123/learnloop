import 'package:flutter/material.dart';

class FourthTab extends StatelessWidget {
  const FourthTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Third Tab')),
      body: Center(
        child: Text(
          'Welcome to the Third Tab!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
