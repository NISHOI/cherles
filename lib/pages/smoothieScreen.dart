import 'package:flutter/material.dart';
import 'package:finals/pages/widgets/menuCard.dart';
import 'homeScreen.dart';
import 'orderMenu.dart'; // Ensure ProductCard is imported

class Smoothiescreen extends StatefulWidget {
  const Smoothiescreen({super.key});

  @override
  State<Smoothiescreen> createState() => _SmoothiescreenState();
}

class _SmoothiescreenState extends State<Smoothiescreen> {
  int _selectedIndex = 0;

  // List of widgets or pages for the navigation
  final List<Widget> _pages = [
    const Center(child: Text('Home')),
    const Center(child: Text('Orders')),
    const Center(child: Text('History')),
    const Center(child: Text('Profile')),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff9c25c),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            // Search Bar
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.search, color: Colors.grey),
                    hintText: 'Search',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            // Back Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const Homescreen()),
                      );
                    },
                    child: const CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 15,
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.black,
                        size: 16,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    'Back',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Smoothie',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 10),
            // Grid of Product Cards
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.count(
                shrinkWrap: true, // Ensures the grid only takes up the required space
                physics: const NeverScrollableScrollPhysics(), // Prevents scrolling within GridView
                crossAxisCount: 2, // Two items per row
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 0.7, // Adjust the aspect ratio of each item for better layout
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Ordermenu(
                            productName: 'Avocado Smoothie',
                            productImage: 'assets/images/avocado.png', // Update the image path as needed
                            productDescription: 'A creamy avocado smoothie made with fresh avocados and a touch of sweetness.',
                            price: '₱ 89', // Adjust the price accordingly
                          ),
                        ),
                      );
                    },
                    child: const ProductCard(
                      imagePath: 'assets/images/avocado.png', // Update the image path as needed
                      brand: 'Brand',
                      productName: 'Avocado Smoothie',
                      price: '₱ 89', // Adjust the price accordingly
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Ordermenu(
                            productName: 'Blueberry Smoothie',
                            productImage: 'assets/images/blubrry.png',
                            productDescription: 'A delicious blueberry smoothie made with fresh ingredients.',
                            price: '₱ 79',
                          ),
                        ),
                      );
                    },
                    child: const ProductCard(
                      imagePath: 'assets/images/blubrry.png',
                      brand: 'Brand',
                      productName: 'Blueberry Smoothie',
                      price: '₱ 79',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Ordermenu(
                            productName: 'Strawberry Smoothie',
                            productImage: 'assets/images/strbry.png',
                            productDescription: 'A refreshing strawberry smoothie with a creamy texture.',
                            price: '₱ 79',
                          ),
                        ),
                      );
                    },
                    child: const ProductCard(
                      imagePath: 'assets/images/strbry.png',
                      brand: 'Brand',
                      productName: 'Strawberry Smoothie',
                      price: '₱ 79',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Ordermenu(
                            productName: 'Mango Smoothie',
                            productImage: 'assets/images/mango.png',
                            productDescription: 'A tropical mango smoothie perfect for a hot day.',
                            price: '₱ 79',
                          ),
                        ),
                      );
                    },
                    child: const ProductCard(
                      imagePath: 'assets/images/mango.png',
                      brand: 'Brand',
                      productName: 'Mango Smoothie',
                      price: '₱ 79',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.black,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart, color: Colors.black),
            label: 'Order',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history, color: Colors.black),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle, color: Colors.black),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
