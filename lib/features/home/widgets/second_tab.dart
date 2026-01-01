import 'package:flutter/material.dart';

class SecondTab extends StatelessWidget {
  const SecondTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Tab')),
      body: Center(
        child: Text(
          'Welcome to the Second Tab!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
