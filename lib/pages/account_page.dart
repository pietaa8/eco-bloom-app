import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Account')),
      body: Center(
        child: Text(
          'User Account Details Coming Soon!',
          style: TextStyle(fontSize: 16, fontFamily: 'Georgia'),
        ),
      ),
    );
  }
}
