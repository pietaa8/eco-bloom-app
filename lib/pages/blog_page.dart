import 'package:flutter/material.dart';

class BlogPage extends StatelessWidget {
  final List<Map<String, String>> blogPosts = [
    {
      'title':
          'Top 5 Eco-Friendly Gardening Techniques Every Botany Student Should Master',
      'content':
          'Learn the fundamentals of sustainable gardening: choose native plant species, practice composting to enrich the soil, install rainwater harvesting systems, use organic fertilizers, and minimize plastic by opting for biodegradable pots.'
    },
    {
      'title':
          'The Power of Eco Scores: A Scientific Approach to Green Shopping',
      'content':
          'Eco scores assess a product\'s environmental impact based on factors like carbon footprint, packaging, and biodegradability. Understanding eco scores empowers future botanists to make sustainable choices and influence eco-conscious consumer behavior.'
    },
    {
      'title': 'Composting 101: Turning Kitchen Waste Into Botanical Gold',
      'content':
          'Explore how composting breaks down organic waste into nutrient-rich humus that supports plant health. Learn the science of decomposition, microbial activity, and how composting reduces landfill burden while boosting garden productivity.'
    },
    {
      'title':
          'Native vs Exotic Plants: Why Local Flora Matters More Than You Think',
      'content':
          'Delve into ecological relationships between native plants and local pollinators. Understand how using indigenous species conserves water, prevents invasive species spread, and restores natural biodiversity in your garden.'
    },
    {
      'title':
          'Rain Gardens: Sustainable Water Management Through Smart Landscaping',
      'content':
          'Discover how rain gardens help manage stormwater runoff, filter pollutants, and recharge groundwater. This eco-friendly landscaping practice is essential knowledge for environmentally conscious botanists and urban planners alike.'
    }
  ];

  BlogPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F9F1),
      appBar: AppBar(
        title: const Text(
          'Sustainable Gardening Tips',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xFF4CAF50),
        foregroundColor: Colors.white,
        elevation: 2,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView.builder(
          itemCount: blogPosts.length,
          itemBuilder: (context, index) {
            final post = blogPosts[index];
            return BlogCard(title: post['title']!, content: post['content']!);
          },
        ),
      ),
    );
  }
}

class BlogCard extends StatelessWidget {
  final String title;
  final String content;

  const BlogCard({
    Key? key,
    required this.title,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(Icons.eco, color: Color(0xFF4CAF50)),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              content,
              style: const TextStyle(
                fontSize: 15,
                color: Color.fromARGB(255, 55, 135, 59),
                fontWeight: FontWeight.bold,
                height: 1.7,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
