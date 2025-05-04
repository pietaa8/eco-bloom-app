import 'package:flutter/material.dart';

class LogInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Log In')),
      body: Center(
        child: Text(
          'Log In Form Will Be Here',
          style: TextStyle(fontSize: 16, fontFamily: 'Georgia'),
        ),
      ),
    );
  }
}
