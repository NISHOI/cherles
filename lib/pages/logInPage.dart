import 'package:finals/pages/homeScreen.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff9c25c),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 150,
            ),
            Text(
              'The Daily Grind',
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            Text(
              'Log in an Account',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Enter your email to log in for this app',
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  fillColor: Colors.grey[150],
                  filled: true,
                ),
              ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Homescreen()),
                );
              },
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.black,
                ),
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.symmetric(horizontal: 25.0),
                child: const Center(
                  child: Text(
                    'Continue',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 15),
            Row(
              children: [
                const Flexible(
                  child: Divider(
                    color: Colors.grey,
                    thickness: 2,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: const Text(
                    'or',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                const Flexible(
                  child: Divider(
                    color: Colors.grey,
                    thickness: 2,
                  ),
                )
              ],
            ),
            const SizedBox(height: 15),
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Container(
                width: 350,
                height: 50,
                color: Colors.white,
                child: Row(
                  children: [
                    const SizedBox(width: 75),
                    const CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 20,
                      child: Icon(
                        Icons.search,
                        color: Colors.red,
                      ),
                    ),
                    const SizedBox(width: 15),
                    const Text(
                      'Continue with Google',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Container(
                width: 350,
                height: 50,
                color: Colors.white,
                child: Row(
                  children: [
                    const SizedBox(width: 75),
                    const CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 20,
                      child: Icon(
                        Icons.apple, // Replace with the Apple logo icon
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(width: 15),
                    const Text(
                      'Continue with Apple',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 50),
            Center(
              child: const Text(
                'By clicking continue, you agree to our',
                style: TextStyle(fontSize: 13.5),
              ),
            ),
            Center(
              child: const Text(
                'Terms of Service and Privacy Policy',
                style: TextStyle(
                  fontSize: 13.5,
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
