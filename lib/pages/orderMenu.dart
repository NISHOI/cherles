import 'package:flutter/material.dart';

class Ordermenu extends StatefulWidget {
  final String productName;
  final String productImage;
  final String productDescription;
  final String price;

  const Ordermenu({
    Key? key,
    required this.productName,
    required this.productImage,
    required this.productDescription,
    required this.price,
  }) : super(key: key);

  @override
  _OrdermenuState createState() => _OrdermenuState();
}

class _OrdermenuState extends State<Ordermenu> {
  int _selectedIndex = 0;

  // Track the selected options
  String? hotOrCold = 'Hot';
  String? size = 'Large';
  int quantity = 1; // Track quantity

  // Update the selected index for bottom navigation
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Coffee Image and Back Button
          Stack(
            children: [
              Image.asset(
                widget.productImage, // Dynamic image from the passed parameter
                height: 250,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Positioned(
                top: 40,
                left: 16,
                child: CircleAvatar(
                  backgroundColor: Colors.black54,
                  child: IconButton(
                    icon: Icon(Icons.close, color: Colors.white),
                    onPressed: () {
                      Navigator.pop(context); // Close the screen when clicked
                    },
                  ),
                ),
              ),
            ],
          ),

          // Product Info and Options
          Expanded(
            child: Container(
              color: Colors.amber[200],
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Product Title and Price
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.productName, // Dynamic product name
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            widget.price, // Dynamic price
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Text(
                        widget.productDescription, // Dynamic description
                        style: TextStyle(
                          color: Colors.grey[800],
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(height: 16),

                      // Hot or Cold Option with Box
                      _buildOptionBox(
                        title: "Hot or Cold? Pick 1",
                        options: ['Hot', 'Cold'],
                        groupValue: hotOrCold,
                        onChanged: (value) {
                          setState(() {
                            hotOrCold = value;
                          });
                        },
                      ),

                      // Size Option with Box
                      _buildOptionBox(
                        title: "Choose Your Size: Pick 1",
                        options: ['Large', 'Medium', 'Small'],
                        groupValue: size,
                        onChanged: (value) {
                          setState(() {
                            size = value;
                          });
                        },
                      ),

                      const SizedBox(height: 16),

                      // Quantity Selector
                      Center(
                        child: Text(
                          "Select Quantity",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: Icon(Icons.remove_circle_outline),
                            color: Colors.purple,
                            iconSize: 32,
                            onPressed: () {
                              setState(() {
                                if (quantity > 1) quantity--;
                              });
                            },
                          ),
                          SizedBox(width: 8), // Small space between the button and text
                          Text(
                            '$quantity',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center, // Ensure text alignment
                          ),
                          SizedBox(width: 8), // Small space between the text and button
                          IconButton(
                            icon: Icon(Icons.add_circle_outline),
                            color: Colors.purple,
                            iconSize: 32,
                            onPressed: () {
                              setState(() {
                                quantity++;
                              });
                            },
                          ),
                        ],
                      ),

                      const SizedBox(height: 20),

                      // Add to Cart Button
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.purple,
                            padding: EdgeInsets.symmetric(vertical: 14),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          onPressed: () {
                            // Action for Add to Cart
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                    "${widget.productName} x$quantity added to cart!"),
                                duration: Duration(seconds: 2),
                              ),
                            );
                          },
                          child: const Text(
                            "Add to Cart",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black54,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Order',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  // Helper Widget for Option Boxes (Hot/Cold and Size)
  Widget _buildOptionBox({
    required String title,
    required List<String> options,
    required String? groupValue,
    required Function(String?) onChanged,
  }) {
    return Container(
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          ...options.map((option) {
            return Row(
              children: [
                Radio<String>(
                  value: option,
                  groupValue: groupValue,
                  onChanged: onChanged,
                  activeColor: Colors.purple,
                ),
                Text(option),
              ],
            );
          }).toList(),
        ],
      ),
    );
  }
}
