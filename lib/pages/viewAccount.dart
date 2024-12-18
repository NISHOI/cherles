import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF9C25C),
        appBar: AppBar(
          automaticallyImplyLeading: true,
          centerTitle: true,
          title: const Text('Checkout'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Hello, World'),
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      child: Image(
                        image: NetworkImage(
                            'https://th.bing.com/th/id/OIP.mP1RB8xuQaHAvUkonYY6HwHaHK?rs=1&pid=ImgDetMain'),
                        width: 50,
                        height: 48,
                      ),
                    )
                  ],
                ),
                //spacing
                SizedBox(
                  height: 24,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12)),
                      width: MediaQuery.of(context).size.width * 0.45,
                      height: 100,
                      child: Column(
                        children: [
                          Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Wallet: 47.00',
                                ),
                              )),
                          SizedBox(
                            height: 24,
                          ),
                          Align(
                              alignment: Alignment.bottomRight,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Add Funds'),
                              ))
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12)),
                      width: MediaQuery.of(context).size.width * 0.45,
                      height: 100,
                      child: Column(
                        children: [
                          Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Gcash'),
                              )),
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('09*****6958'),
                              ))
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 24,
                ),

                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  width: MediaQuery.of(context).size.width * 0.95,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Change payment method'),
                      Icon(Icons.arrow_right)
                    ],
                  ),
                ),
                SizedBox(
                  height: 24,
                ),

                Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12)),
                    width: MediaQuery.of(context).size.width * 0.95,
                    height: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Text('Review sent: ')],
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}