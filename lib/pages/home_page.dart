import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../data/product_data.dart';
import '../models/product_model.dart';
import '../pages/product_details_page.dart';
import '../providers/cart_provider.dart';
import '../pages/blog_page.dart';
import '../pages/about_us.dart';
import '../pages/account_page.dart';
import '../pages/log_in.dart';
import '../pages/sign_up.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 179, 237, 189),
      appBar: AppBar(
        backgroundColor: const Color(0xFF4CAF50),
        title: const Text(
          'EcoBloom',
          style: TextStyle(
            fontFamily: 'Georgia',
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        actions: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              IconButton(
                icon: const Icon(Icons.shopping_cart, color: Colors.white),
                onPressed: () {
                  Navigator.pushNamed(context, '/cart');
                },
              ),
              if (cart.items.isNotEmpty)
                Positioned(
                  right: 6,
                  top: 6,
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    constraints:
                        const BoxConstraints(minWidth: 20, minHeight: 20),
                    child: Text(
                      '${cart.items.length}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: const Color(0xFFE8F5E9),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF388E3C),
              ),
              child: Text(
                'EcoBloom Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontFamily: 'Georgia',
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.account_circle, color: Colors.green),
              title: const Text('My Account',
                  style: TextStyle(fontSize: 16, fontFamily: 'Georgia')),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => AccountPage()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.article, color: Colors.green),
              title: const Text('Blog',
                  style: TextStyle(fontSize: 16, fontFamily: 'Georgia')),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => BlogPage()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.login, color: Colors.green),
              title: const Text('Login',
                  style: TextStyle(fontSize: 16, fontFamily: 'Georgia')),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => LogInPage()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.person_add, color: Colors.green),
              title: const Text('Sign Up',
                  style: TextStyle(fontSize: 16, fontFamily: 'Georgia')),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => SignUpPage()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.info_outline, color: Colors.green),
              title: const Text('About Us',
                  style: TextStyle(fontSize: 16, fontFamily: 'Georgia')),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => AboutUsPage()));
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          itemCount: ecoProducts.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 15,
            crossAxisSpacing: 15,
            childAspectRatio: 0.7,
          ),
          itemBuilder: (context, index) {
            final product = ecoProducts[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ProductDetailsPage(product: product),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.green.withOpacity(0.1),
                      blurRadius: 8,
                      offset: Offset(2, 4),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(16)),
                        child: Container(
                          color: Colors.white,
                          padding: const EdgeInsets.all(6),
                          child: Image.asset(
                            product.image,
                            fit: BoxFit.contain,
                            width: double.infinity,
                            height: 100,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 6),
                      child: Column(
                        children: [
                          Text(
                            product.name,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              fontFamily: 'Georgia',
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 4),
                          Text(
                            '৳${product.price}',
                            style: const TextStyle(
                              fontSize: 13,
                              color: Color.fromARGB(255, 1, 200, 31),
                              fontFamily: 'Georgia',
                            ),
                          ),
                          Text(
                            'Eco: ${product.ecoScore}/10',
                            style: const TextStyle(
                              fontSize: 12,
                              fontFamily: 'Georgia',
                              color: Color.fromARGB(255, 238, 114, 114),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
