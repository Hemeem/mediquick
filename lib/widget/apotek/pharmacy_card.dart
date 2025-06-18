import 'package:flutter/material.dart';
import 'package:mediquick/screens/apotek/produk_detail_screen.dart';

class PharmacyCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String price;
  final String pharmacyName;

  const PharmacyCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.price,
    required this.pharmacyName,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder:
                (context) => ProductDetailScreen(
                  imagePath: imagePath,
                  title: title,
                  price: price,
                  pharmacyName: pharmacyName,
                  location: 'Batu Aji, Batam',
                ),
          ),
        );
      },
      child: Container(
        height: 300,
        decoration: BoxDecoration(
          color: const Color(0xFFE2DAD6),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                imagePath,
                height: 100,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(price),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                pharmacyName,
                style: const TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
