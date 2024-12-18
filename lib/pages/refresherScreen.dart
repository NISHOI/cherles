import 'package:flutter/material.dart';
import 'package:finals/pages/widgets/menuCard.dart';
import 'homeScreen.dart';
import 'orderMenu.dart'; // Ensure ProductCard is imported

class Refresherscreen extends StatefulWidget {
  const Refresherscreen({super.key});

  @override
  State<Refresherscreen> createState() => _RefresherscreenState();
}

class _RefresherscreenState extends State<Refresherscreen> {
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
                  'Refreshers',
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
                  // Lemonade Product
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Ordermenu(
                            productName: 'Lemonade',
                            productImage: 'assets/images/lemon.jpg',
                            productDescription: 'Freshly squeezed lemonade made with real lemons.',
                            price: '₱ 79',
                          ),
                        ),
                      );
                    },
                    child: const ProductCard(
                      imagePath: 'assets/images/lemon.jpg',
                      brand: 'Brand',
                      productName: 'Lemonade',
                      price: '₱ 79',
                    ),
                  ),
                  // Pink Lemonade Product
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Ordermenu(
                            productName: 'Pink Lemonade',
                            productImage: 'assets/images/gaylemon.jpg',
                            productDescription: 'A sweet and tangy pink lemonade for refreshing summer vibes.',
                            price: '₱ 79',
                          ),
                        ),
                      );
                    },
                    child: const ProductCard(
                      imagePath: 'assets/images/gaylemon.jpg',
                      brand: 'Brand',
                      productName: 'Pink Lemonade',
                      price: '₱ 79',
                    ),
                  ),
                  // Sparkling Water Product
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Ordermenu(
                            productName: 'Sparkling Water',
                            productImage: 'assets/images/spark.jpg',
                            productDescription: 'Refreshing sparkling water with a hint of natural flavors.',
                            price: '₱ 79',
                          ),
                        ),
                      );
                    },
                    child: const ProductCard(
                      imagePath: 'assets/images/spark.jpg',
                      brand: 'Brand',
                      productName: 'Sparkling Water',
                      price: '₱ 79',
                    ),
                  ),
                  // Cola Product
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Ordermenu(
                            productName: 'Cola',
                            productImage: 'assets/images/coke.jpg',
                            productDescription: 'Classic cola flavor, sweet and bubbly.',
                            price: '₱ 79',
                          ),
                        ),
                      );
                    },
                    child: const ProductCard(
                      imagePath: 'assets/images/coke.jpg',
                      brand: 'Brand',
                      productName: 'Cola',
                      price: '₱ 79',
                    ),
                  ),
                ],
              ),
            )

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
