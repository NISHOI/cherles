import 'package:flutter/material.dart';
import 'homeScreen.dart';
import 'widgets/menuCard.dart';
import 'package:finals/pages/orderMenu.dart';

class Pastryscreen extends StatefulWidget {
  const Pastryscreen({super.key});

  @override
  State<Pastryscreen> createState() => _PastryscreenState();
}

class _PastryscreenState extends State<Pastryscreen> {
  int _selectedIndex = 0;

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
                  'Pastries',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 10),
            // Grid of Product Cards
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 0.7,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Ordermenu(
                            productName: 'Apple Pie',
                            productImage: 'assets/images/apie.jpg',
                            productDescription: 'A delicious classic apple pie with a golden crust.',
                            price: '₱ 110',
                          ),
                        ),
                      );
                    },
                    child: ProductCard(
                      imagePath: 'assets/images/apie.jpg',
                      brand: 'Brand',
                      productName: 'Apple Pie',
                      price: '₱ 110',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Ordermenu(
                            productName: 'Banana Bread',
                            productImage: 'assets/images/bbread.jpg',
                            productDescription: 'Moist and flavorful banana bread.',
                            price: '₱ 70',
                          ),
                        ),
                      );
                    },
                    child: ProductCard(
                      imagePath: 'assets/images/bbread.jpg',
                      brand: 'Brand',
                      productName: 'Banana Bread',
                      price: '₱ 70',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Ordermenu(
                            productName: 'Blueberry Cake',
                            productImage: 'assets/images/bcake.jpg',
                            productDescription: 'Soft and sweet cake with blueberry flavor.',
                            price: '₱ 180',
                          ),
                        ),
                      );
                    },
                    child: ProductCard(
                      imagePath: 'assets/images/bcake.jpg',
                      brand: 'Brand',
                      productName: 'Blueberry Cake',
                      price: '₱ 180',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Ordermenu(
                            productName: 'Cinnamon Roll',
                            productImage: 'assets/images/croll.jpg',
                            productDescription: 'A soft, sweet roll with cinnamon filling and glaze.',
                            price: '₱ 120',
                          ),
                        ),
                      );
                    },
                    child: ProductCard(
                      imagePath: 'assets/images/croll.jpg',
                      brand: 'Brand',
                      productName: 'Cinnamon Roll',
                      price: '₱ 120',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Ordermenu(
                            productName: 'Cookie',
                            productImage: 'assets/images/cookie.jpg',
                            productDescription: 'A crunchy, chocolate chip cookie perfect for snacks.',
                            price: '₱ 50',
                          ),
                        ),
                      );
                    },
                    child: ProductCard(
                      imagePath: 'assets/images/cookie.jpg',
                      brand: 'Brand',
                      productName: 'Cookie',
                      price: '₱ 50',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Ordermenu(
                            productName: 'Croissant',
                            productImage: 'assets/images/cosant.jpg',
                            productDescription: 'A flaky, buttery croissant baked to perfection.',
                            price: '₱ 90',
                          ),
                        ),
                      );
                    },
                    child: ProductCard(
                      imagePath: 'assets/images/cosant.jpg',
                      brand: 'Brand',
                      productName: 'Croissant',
                      price: '₱ 90',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Ordermenu(
                            productName: 'Chocolate Cake',
                            productImage: 'assets/images/ccake.jpg',
                            productDescription: 'A rich and moist chocolate cake with creamy frosting.',
                            price: '₱ 100',
                          ),
                        ),
                      );
                    },
                    child: ProductCard(
                      imagePath: 'assets/images/ccake.jpg',
                      brand: 'Brand',
                      productName: 'Chocolate Cake',
                      price: '₱ 100',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Ordermenu(
                            productName: 'Muffin',
                            productImage: 'assets/images/muffin.jpg',
                            productDescription: 'A soft and fluffy muffin, available in various flavors.',
                            price: '₱ 50',
                          ),
                        ),
                      );
                    },
                    child: ProductCard(
                      imagePath: 'assets/images/muffin.jpg',
                      brand: 'Brand',
                      productName: 'Muffin',
                      price: '₱ 50',
                    ),
                  ),


                ],
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
