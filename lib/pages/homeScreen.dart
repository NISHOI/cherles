import 'package:finals/pages/coffeeScreen.dart';
import 'package:finals/pages/frappeScreen.dart';
import 'package:finals/pages/refresherScreen.dart';
import 'package:finals/pages/smoothieScreen.dart';
import 'package:finals/pages/teaScreen.dart';
import 'package:flutter/material.dart';
import 'package:finals/pages/widgets/buttonTabs.dart';
import 'package:finals/pages/widgets/categoryTabs.dart';
import 'package:finals/pages/widgets/productCard.dart';
import 'package:finals/pages/pastryscreen.dart';
import 'package:finals/pages/orderMenu.dart';
import 'package:finals/pages/checkoutMenu.dart';
import 'package:finals/pages/viewAccount.dart'; // Assuming AccountScreen is here

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int _selectedIndex = 0;

  // List of widgets or pages for the navigation (not being used right now)
  final List<Widget> _pages = [
    const Center(child: Text('Home')),
    const Center(child: Text('Orders')),
    const Center(child: Text('History')),
    const Center(child: Text('Profile')),
  ];

  // Navigate based on the selected tab
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    // Navigate to CheckoutPage if "Order" tab (index 1) is selected
    if (index == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const CheckoutPage()), // Navigate to CheckoutPage
      );
    }

    // Navigate to AccountScreen if "Profile" tab (index 3) is selected
    if (index == 3) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const AccountScreen()), // Navigate to AccountScreen
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff9c25c),

      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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

            // Button Tabs
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtonTabs(text: 'Favorites', icon: Icons.favorite_border_outlined),
                ButtonTabs(text: 'History', icon: Icons.history),
                ButtonTabs(text: 'Order', icon: Icons.receipt_long),
              ],
            ),

            // Banner Image
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: SizedBox(
                height: 180,
                width: 400,
                child: Image.asset(
                  'assets/images/banner.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // See More Row
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Row(
                children: [
                  Text(
                    'See More',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 10),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 15,
                    child: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.black,
                      size: 16,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10),

            // Horizontal Scrollable Category List
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Pastryscreen()),
                        );
                      },
                      child: const CategoryItem(imagePath: 'assets/images/pastry.jpg', label: 'Pastry'),
                    ),
                    const SizedBox(width: 15),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Coffeescreen()),
                        );
                      },
                      child: const CategoryItem(imagePath: 'assets/images/coffee.jpg', label: 'Coffee'),
                    ),
                    const SizedBox(width: 15),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Frappescreen()),
                        );
                      },
                      child: const CategoryItem(imagePath: 'assets/images/frappe.jpg', label: 'Frappe'),
                    ),
                    const SizedBox(width: 15),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Smoothiescreen()),
                        );
                      },
                      child: const CategoryItem(imagePath: 'assets/images/smoothie.jpg', label: 'Smoothie'),
                    ),
                    const SizedBox(width: 15),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Teascreen()),
                        );
                      },
                      child: const CategoryItem(imagePath: 'assets/images/tea.jpg', label: 'Tea'),
                    ),
                    const SizedBox(width: 15),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Refresherscreen()),
                        );
                      },
                      child: const CategoryItem(imagePath: 'assets/images/refreshers.jpg', label: 'Refresher'),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 30),

            // Featured Product Header
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Featured Product',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 15),

            // Horizontal Scrollable Featured Products Grid
            Padding(
              padding: EdgeInsets.all(5.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Ordermenu(
                              productName: 'Affogato',
                              productImage: 'assets/images/agato.jpg',
                              productDescription: 'A rich coffee dessert with a scoop of ice cream.',
                              price: '₱170',
                            ),
                          ),
                        );
                      },
                      child: ProductCard(
                        imagePath: 'assets/images/agato.jpg',
                        productName: 'Affogato',
                        price: '₱170',
                      ),
                    ),
                    const SizedBox(width: 10),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Ordermenu(
                              productName: 'Americano',
                              productImage: 'assets/images/micoffee.jpg',
                              productDescription: 'Classic and bold coffee for everyday energy.',
                              price: '₱140',
                            ),
                          ),
                        );
                      },
                      child: ProductCard(
                        imagePath: 'assets/images/micoffee.jpg',
                        productName: 'Americano',
                        price: '₱140',
                      ),
                    ),
                    const SizedBox(width: 10),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Ordermenu(
                              productName: 'Spanish Latte',
                              productImage: 'assets/images/slatte.jpg',
                              productDescription: 'A smooth and rich coffee drink.',
                              price: '₱170',
                            ),
                          ),
                        );
                      },
                      child: ProductCard(
                        imagePath: 'assets/images/slatte.jpg',
                        productName: 'Spanish Latte',
                        price: '₱170',
                      ),
                    ),
                    const SizedBox(width: 10),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Ordermenu(
                              productName: 'Apple Pie',
                              productImage: 'assets/images/apie.jpg',
                              productDescription: 'A delightful and warm apple dessert.',
                              price: '₱110',
                            ),
                          ),
                        );
                      },
                      child: ProductCard(
                        imagePath: 'assets/images/apie.jpg',
                        productName: 'Apple Pie',
                        price: '₱110',
                      ),
                    ),
                    const SizedBox(width: 10),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Ordermenu(
                              productName: 'Cinnamon Roll',
                              productImage: 'assets/images/croll.jpg',
                              productDescription: 'Sweet and soft, with a perfect cinnamon flavor.',
                              price: '₱120',
                            ),
                          ),
                        );
                      },
                      child: ProductCard(
                        imagePath: 'assets/images/croll.jpg',
                        productName: 'Cinnamon Roll',
                        price: '₱120',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.black,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.black,), label: 'Home',),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart, color: Colors.black), label: 'Order'),
          BottomNavigationBarItem(icon: Icon(Icons.history, color: Colors.black), label: 'History'),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle, color: Colors.black), label: 'Profile'),
        ],
      ),
    );
  }
}
