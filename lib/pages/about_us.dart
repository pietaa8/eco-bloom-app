import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  void _handleContactSupport(BuildContext context) {
    // Placeholder for contact support action
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Contacting support...')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFE8F5E9), // Light green
              Color(0xFFC8E6C9), // Slightly darker green
            ],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'About Eco Bloom',
                  style: TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2E7D32), // Forest green
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Growing a greener planet, one garden at a time',
                  style: TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 16,
                    color: Colors.grey[600],
                  ),
                ),
                SizedBox(height: 24),
                Card(
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Our Story',
                          style: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF2E7D32),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Eco Bloom was founded with a passion for sustainable gardening. We believe that everyone can contribute to a healthier planet by cultivating eco-friendly gardens. Our journey began with a small team of horticulturists and environmentalists dedicated to providing high-quality, sustainable products for gardeners worldwide.',
                          style: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 16,
                            color: Colors.grey[800],
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Our Mission',
                          style: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF2E7D32),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'To empower gardeners with eco-friendly tools, plants, and knowledge to create sustainable gardens that nurture both people and the planet.',
                          style: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 16,
                            color: Colors.grey[800],
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Our Team',
                          style: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF2E7D32),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'We are a diverse team of gardeners, botanists, and sustainability experts united by our love for green living. From sourcing organic seeds to designing biodegradable planters, our team is committed to making gardening accessible and environmentally responsible.',
                          style: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 16,
                            color: Colors.grey[800],
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 24),
                Card(
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Contact Us',
                          style: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF2E7D32),
                          ),
                        ),
                        SizedBox(height: 8),
                        ListTile(
                          leading: Icon(
                            Icons.email,
                            color: Color(0xFF4CAF50),
                          ),
                          title: Text(
                            'Email',
                            style: TextStyle(
                              fontFamily: 'Lato',
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                          subtitle: Text(
                            'support@ecobloom.com',
                            style: TextStyle(
                              fontFamily: 'Lato',
                              color: Colors.grey[600],
                            ),
                          ),
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.phone,
                            color: Color(0xFF4CAF50),
                          ),
                          title: Text(
                            'Phone',
                            style: TextStyle(
                              fontFamily: 'Lato',
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                          subtitle: Text(
                            '+1 (800) 555-1234',
                            style: TextStyle(
                              fontFamily: 'Lato',
                              color: Colors.grey[600],
                            ),
                          ),
                        ),
                        SizedBox(height: 8),
                        Center(
                          child: ElevatedButton(
                            onPressed: () => _handleContactSupport(context),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF4CAF50),
                              foregroundColor: Colors.white,
                              padding: EdgeInsets.symmetric(
                                horizontal: 48,
                                vertical: 16,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              elevation: 4,
                            ),
                            child: Text(
                              'Get in Touch',
                              style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
