import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('About Us')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'EcoBloom is dedicated to promoting sustainable gardening with eco-friendly products. Our mission is to help you grow a greener planet!',
            style: TextStyle(fontSize: 16, fontFamily: 'Georgia'),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
