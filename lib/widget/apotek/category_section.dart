import 'package:flutter/material.dart';

class CategoryApotekSection extends StatelessWidget {
  const CategoryApotekSection({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = [
      {'iconPath': 'assets/images/suplemen.jpg', 'label': 'Suplemen'},
      {'iconPath': 'assets/images/salep.jpg', 'label': 'Salep'},
      {'iconPath': 'assets/images/obattetes.jpg', 'label': 'Obat Tetes'},
    ];

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Kategori',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:
                categories.map((item) {
                  return Column(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage(item['iconPath']!),
                        backgroundColor: Colors.transparent,
                      ),
                      const SizedBox(height: 8),
                      Text(item['label']!),
                    ],
                  );
                }).toList(),
          ),
        ],
      ),
    );
  }
}
