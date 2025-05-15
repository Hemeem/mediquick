import 'package:flutter/material.dart';

class ApotekHeader extends StatelessWidget {
  const ApotekHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: const Color(0xFF6482AD),
                radius: 22,
                child: Text(
                  'LI',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(width: 12),
            ],
          ),

          Row(
            children: const [
              Icon(Icons.shopping_cart, size: 26, color: Color(0xFF6482AD)),
              SizedBox(width: 16),
              Icon(Icons.notifications, size: 26, color: Color(0xFF6482AD)),
            ],
          ),
        ],
      ),
    );
  }
}
