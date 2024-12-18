import 'package:flutter/material.dart';

class ButtonTabs extends StatelessWidget {
  final String text;   // Text parameter
  final IconData icon;  // Icon parameter

  // Constructor to receive both text and icon
  const ButtonTabs({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
        width: 125,
        height: 50,
        color: Colors.white,
        child: Row(
          children: [
            const SizedBox(width: 15),
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 10,
              child: Icon(
                icon,  // Use the icon parameter here
                color: Colors.red,
              ),
            ),
            const SizedBox(width: 15),
            Text(
              text,  // Use the text parameter here
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
