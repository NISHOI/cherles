import 'package:flutter/material.dart';
import 'package:finals/pages/widgets/menuCard.dart';
import 'homeScreen.dart';
import 'package:finals/pages/orderMenu.dart';

class Frappescreen extends StatefulWidget {
  const Frappescreen({super.key});

  @override
  State<Frappescreen> createState() => _FrappescreenState();
}

class _FrappescreenState extends State<Frappescreen> {
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
                  'Frappe',
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
                            productName: 'Caramel Frappe',
                            productImage: 'assets/images/cf.png',
                            productDescription: 'A sweet and creamy caramel frappuccino topped with whipped cream.',
                            price: '₱ 79',
                          ),
                        ),
                      );
                    },
                    child: ProductCard(
                      imagePath: 'assets/images/cf.png',
                      brand: 'Brand',
                      productName: 'Caramel Frappe',
                      price: '₱ 79',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Ordermenu(
                            productName: 'Mocha Cookie Crumble Frappe',
                            productImage: 'assets/images/mccf.png',
                            productDescription: 'A delicious mocha frappuccino blended with cookie crumble and topped with whipped cream.',
                            price: '₱ 79',
                          ),
                        ),
                      );
                    },
                    child: ProductCard(
                      imagePath: 'assets/images/mccf.png',
                      brand: 'Brand',
                      productName: 'Mocha Cookie Crumble Frappe',
                      price: '₱ 79',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Ordermenu(
                            productName: 'Matcha Crème Frappuccino',
                            productImage: 'assets/images/mcf.png',
                            productDescription: 'A smooth blend of matcha with creamy milk and ice, topped with whipped cream.',
                            price: '₱ 79',
                          ),
                        ),
                      );
                    },
                    child: ProductCard(
                      imagePath: 'assets/images/mcf.png',
                      brand: 'Brand',
                      productName: 'Matcha Crème Frappuccino',
                      price: '₱ 79',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Ordermenu(
                            productName: 'Pumpkin Spice Frappuccino',
                            productImage: 'assets/images/psf.png',
                            productDescription: 'A fall favorite, blended pumpkin spice with coffee and topped with whipped cream.',
                            price: '₱ 79',
                          ),
                        ),
                      );
                    },
                    child: ProductCard(
                      imagePath: 'assets/images/psf.png',
                      brand: 'Brand',
                      productName: 'Pumpkin Spice Frappuccino',
                      price: '₱ 79',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Ordermenu(
                            productName: 'Pistachio Coffee Frappuccino',
                            productImage: 'assets/images/pcf.png',
                            productDescription: 'A creamy blend of pistachio flavor with coffee, perfect for a refreshing treat.',
                            price: '₱ 79',
                          ),
                        ),
                      );
                    },
                    child: ProductCard(
                      imagePath: 'assets/images/pcf.png',
                      brand: 'Brand',
                      productName: 'Pistachio Coffee Frappuccino',
                      price: '₱ 79',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Ordermenu(
                            productName: 'Strawberry Crème Frappuccino',
                            productImage: 'assets/images/scf.png',
                            productDescription: 'A refreshing frappuccino with fresh strawberry flavor and creamy texture.',
                            price: '₱ 79',
                          ),
                        ),
                      );
                    },
                    child: ProductCard(
                      imagePath: 'assets/images/scf.png',
                      brand: 'Brand',
                      productName: 'Strawberry Crème Frappuccino',
                      price: '₱ 79',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Ordermenu(
                            productName: 'White Chocolate Crème Frappe',
                            productImage: 'assets/images/wccf.png',
                            productDescription: 'A rich and indulgent frappuccino with white chocolate and creamy texture.',
                            price: '₱ 79',
                          ),
                        ),
                      );
                    },
                    child: ProductCard(
                      imagePath: 'assets/images/wccf.png',
                      brand: 'Brand',
                      productName: 'White Chocolate Crème Frappe',
                      price: '₱ 79',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Ordermenu(
                            productName: 'Café Vanilla Frappuccino',
                            productImage: 'assets/images/cvf.png',
                            productDescription: 'A sweet and smooth frappuccino blended with vanilla and coffee flavors.',
                            price: '₱ 79',
                          ),
                        ),
                      );
                    },
                    child: ProductCard(
                      imagePath: 'assets/images/cvf.png',
                      brand: 'Brand',
                      productName: 'Café Vanilla Frappuccino',
                      price: '₱ 79',
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