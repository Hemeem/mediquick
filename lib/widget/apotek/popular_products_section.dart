import 'package:flutter/material.dart';
import 'pharmacy_card.dart';

class PopularProducts extends StatelessWidget {
  PopularProducts({super.key});

  final products = [
    {
      'image': 'assets/images/protein.jpg',
      'title': 'Whey Protein\nSuplemen Protein',
      'price': 'Rp 100.000',
      'pharmacy': 'Apotek Prima',
    },
    {
      'image': 'assets/images/salep.jpg',
      'title': 'Salep\nUntuk Penyakit kulit',
      'price': 'Rp 80.000',
      'pharmacy': 'Apotek Sehat',
    },
    {
      'image': 'assets/images/obattetes.jpg',
      'title': 'Obat Tetes\nUntuk Penyakit mata',
      'price': 'Rp 50.000',
      'pharmacy': 'Apotek Prima',
    },
    {
      'image': 'assets/images/suplemen.jpg',
      'title': 'Vitamin Harian\nUntuk Imunitas',
      'price': 'Rp 80.000',
      'pharmacy': 'Apotek Sehat',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Terlaris',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 12),
          GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 0.7,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children:
                products.map((product) {
                  return PharmacyCard(
                    imagePath: product['image']!,
                    title: product['title']!,
                    price: product['price']!,
                    pharmacyName: product['pharmacy']!,
                  );
                }).toList(),
          ),
        ],
      ),
    );
  }
}
