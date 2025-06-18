import 'package:flutter/material.dart';

class ProductImageSection extends StatelessWidget {
  final String imagePath;

  const ProductImageSection({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width, // lebar penuh layar
          height: 400,
          child: Image.asset(imagePath, fit: BoxFit.cover),
        ),
        Positioned(
          top: 16,
          left: 16,
          child: CircleAvatar(
            backgroundColor: Colors.white.withOpacity(0.8),
            child: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => Navigator.pop(context),
            ),
          ),
        ),
      ],
    );
  }
}
