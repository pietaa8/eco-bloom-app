import 'package:flutter/material.dart';

class BlogPage extends StatelessWidget {
  final List<Map<String, String>> blogPosts = [
    {
      'title': '5 Eco Gardening Tips',
      'content': 'Use native plants, compost, and reduce plastic...'
    },
    {
      'title': 'Why Eco Scores Matter',
      'content': 'Eco scores help you make greener choices when shopping.'
    }
  ];

  BlogPage({Key? key}) : super(key: key); // removed 'const'

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sustainable Gardening Tips')),
      body: ListView.builder(
        itemCount: blogPosts.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(blogPosts[index]['title']!),
            subtitle: Text(blogPosts[index]['content']!),
          );
        },
      ),
    );
  }
}
