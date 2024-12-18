import 'package:flutter/material.dart';
import 'package:finals/pages/widgets/menuCard.dart';
import 'homeScreen.dart';
import 'package:finals/pages/orderMenu.dart';

class Coffeescreen extends StatefulWidget {
  const Coffeescreen({super.key});

  @override
  State<Coffeescreen> createState() => _CoffeescreenState();
}

class _CoffeescreenState extends State<Coffeescreen> {
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
                  'Coffee',
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
                            productName: 'Affogato',
                            productImage: 'assets/images/agato.jpg',
                            productDescription: 'A dessert-style coffee made with espresso and vanilla gelato.',
                            price: '₱ 170',
                          ),
                        ),
                      );
                    },
                    child: ProductCard(
                      imagePath: 'assets/images/agato.jpg',
                      brand: 'Brand',
                      productName: 'Affogato',
                      price: '₱ 170',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Ordermenu(
                            productName: 'Caramel Macchiato',
                            productImage: 'assets/images/cmac.jpg',
                            productDescription: 'A sweet and creamy espresso drink with caramel and steamed milk.',
                            price: '₱ 165',
                          ),
                        ),
                      );
                    },
                    child: ProductCard(
                      imagePath: 'assets/images/cmac.jpg',
                      brand: 'Brand',
                      productName: 'Caramel Macchiato',
                      price: '₱ 165',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Ordermenu(
                            productName: 'Mocha',
                            productImage: 'assets/images/mocha.jpg',
                            productDescription: 'A perfect blend of espresso, steamed milk, and rich chocolate.',
                            price: '₱ 160',
                          ),
                        ),
                      );
                    },
                    child: ProductCard(
                      imagePath: 'assets/images/mocha.jpg',
                      brand: 'Brand',
                      productName: 'Mocha',
                      price: '₱ 160',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Ordermenu(
                            productName: 'Spanish Latte',
                            productImage: 'assets/images/slatte.jpg',
                            productDescription: 'A smooth and sweet latte with a touch of cinnamon and condensed milk.',
                            price: '₱ 170',
                          ),
                        ),
                      );
                    },
                    child: ProductCard(
                      imagePath: 'assets/images/slatte.jpg',
                      brand: 'Brand',
                      productName: 'Spanish Latte',
                      price: '₱ 170',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Ordermenu(
                            productName: 'Irish Coffee',
                            productImage: 'assets/images/icoffee.jpg',
                            productDescription: 'A smooth, rich coffee with a dash of Irish whiskey and cream.',
                            price: '₱ 180',
                          ),
                        ),
                      );
                    },
                    child: ProductCard(
                      imagePath: 'assets/images/icoffee.jpg',
                      brand: 'Brand',
                      productName: 'Irish Coffee',
                      price: '₱ 180',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Ordermenu(
                            productName: 'Coffee Latte',
                            productImage: 'assets/images/latte.jpg',
                            productDescription: 'A creamy and delicious combination of espresso and steamed milk.',
                            price: '₱ 160',
                          ),
                        ),
                      );
                    },
                    child: ProductCard(
                      imagePath: 'assets/images/latte.jpg',
                      brand: 'Brand',
                      productName: 'Coffee Latte',
                      price: '₱ 160',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Ordermenu(
                            productName: 'Americano',
                            productImage: 'assets/images/micoffee.jpg',
                            productDescription: 'A simple espresso-based coffee with hot water added for a bold flavor.',
                            price: '₱ 140',
                          ),
                        ),
                      );
                    },
                    child: ProductCard(
                      imagePath: 'assets/images/micoffee.jpg',
                      brand: 'Brand',
                      productName: 'Americano',
                      price: '₱ 140',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Ordermenu(
                            productName: 'Flat White',
                            productImage: 'assets/images/flatwhite.jpg',
                            productDescription: 'A smooth and velvety coffee made with espresso and steamed milk.',
                            price: '₱ 150',
                          ),
                        ),
                      );
                    },
                    child: ProductCard(
                      imagePath: 'assets/images/flatwhite.jpg',
                      brand: 'Brand',
                      productName: 'Flat White',
                      price: '₱ 150',
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