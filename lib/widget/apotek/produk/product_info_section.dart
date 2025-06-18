import 'package:flutter/material.dart';

class ProductInfoSection extends StatelessWidget {
  final String title;
  final String price;

  const ProductInfoSection({
    super.key,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: Color(0xFF2A2A2A),
          ),
        ),
        const SizedBox(height: 10),

        // Harga produk
        Text(
          price,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.black87,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 12),

        const Divider(thickness: 1, color: Colors.grey),
      ],
    );
  }
}
