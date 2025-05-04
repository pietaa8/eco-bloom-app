import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Settings')),
      body: Center(
        child: Text(
          'Settings Options Will Be Available Here',
          style: TextStyle(fontSize: 16, fontFamily: 'Georgia'),
        ),
      ),
    );
  }
}
