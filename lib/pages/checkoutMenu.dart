import 'package:flutter/material.dart';
import 'package:finals/pages/homescreen.dart'; // Make sure you import your HomeScreen

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff9c25c),
      appBar: AppBar(
        title: const Text('Checkout', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 1,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Address Section
                  _buildSectionHeader(title: 'Address', trailing: 'Add shipping address'),
                  _buildDivider(),

                  // Delivery Section
                  _buildSectionHeader(
                      title: 'DELIVERY', trailing: '₱70 Standard | Estimated 20-30 minutes'),
                  _buildDivider(),

                  // Payment Section
                  _buildSectionHeader(title: 'PAYMENT', trailing: 'Gcash'),
                  _buildDivider(),

                  // Promos Section
                  _buildSectionHeader(title: 'PROMOS', trailing: 'Free Shipping'),
                  _buildDivider(),

                  // Items List
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        _buildCartItem(
                          imagePath: 'assets/images/bcake.jpg',
                          title: 'Blueberry Cheesecake',
                          description: 'Soft and sweet cake with blueberry flavor\nQuantity: 2',
                          price: '₱ 360',
                        ),
                        _buildCartItem(
                          imagePath: 'assets/images/flatwhite.jpg',
                          title: 'Flat White',
                          description: 'A smooth and velvety coffee made with espresso and steamed milk\nQuantity: 1',
                          price: '₱ 150',
                        ),
                      ],
                    ),
                  ),

                  // Total Calculation Section
                  const Divider(color: Colors.black),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        _buildTotalRow('Subtotal (2)', '₱ 510'),
                        _buildTotalRow('Shipping total', 'Free'),
                        SizedBox(height: 10),
                        _buildTotalRow('Total', '₱ 510', isBold: true),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Place Order Button
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  padding: const EdgeInsets.all(14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {
                  // Show confirmation notification
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Order Placed'),
                        content: const Text('Your order has been placed. Thank you for shopping!'),
                        actions: <Widget>[
                          TextButton(
                            child: const Text('OK'),
                            onPressed: () {
                              // Navigate back to HomeScreen
                              Navigator.pop(context); // Close the dialog
                              Navigator.pop(context); // Go back to the previous screen (HomeScreen)
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
                child: const Text(
                  'Place order',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Section header with title and trailing text
  Widget _buildSectionHeader({required String title, required String trailing}) {
    return ListTile(
      title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
      trailing: Text(trailing, style: const TextStyle(color: Colors.grey)),
    );
  }

  // Single cart item
  Widget _buildCartItem({
    required String imagePath,
    required String title,
    required String description,
    required String price,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              imagePath,
              width: 70,
              height: 70,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                const SizedBox(height: 4),
                Text(
                  description,
                  style: const TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ],
            ),
          ),
          const SizedBox(width: 12),
          Text(price, style: const TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  // Divider widget
  Widget _buildDivider() {
    return const Divider(
      color: Colors.black26,
      thickness: 1,
    );
  }
}

// Total Row widget
class _buildTotalRow extends StatelessWidget {
  final String label;
  final String value;
  final bool isBold;

  const _buildTotalRow(this.label, this.value, {this.isBold = false, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 16,
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 16,
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
