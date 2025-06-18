import 'package:flutter/material.dart';

class ProductBottomBar extends StatelessWidget {
  final VoidCallback onCheckout;
  final bool isCheckoutEnabled;

  const ProductBottomBar({
    super.key,
    required this.onCheckout,
    required this.isCheckoutEnabled,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFDDE6F0),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: [
          // Chat Icon Button
          Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFF7FA1C3),
            ),
            child: const Icon(
              Icons.chat_bubble_outline,
              color: Colors.white,
              size: 20,
            ),
          ),

          const SizedBox(width: 12),

          // Tombol Keranjang
          Expanded(
            child: OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.add, color: Color(0xFF7FA1C3)),
              label: const Text(
                'Keranjang',
                style: TextStyle(color: Color(0xFF7FA1C3)),
              ),
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Color(0xFF7FA1C3)),
                padding: const EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),

          const SizedBox(width: 12),

          // Tombol Checkout Gradient
          Expanded(
            child: Container(
              height: 48,
              decoration: BoxDecoration(
                gradient:
                    isCheckoutEnabled
                        ? const LinearGradient(
                          colors: [Color(0xFF7FA1C3), Color(0xFF4B6D92)],
                        )
                        : const LinearGradient(
                          colors: [Colors.grey, Colors.grey],
                        ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: ElevatedButton(
                onPressed: isCheckoutEnabled ? onCheckout : null,
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  foregroundColor: Colors.white,
                  disabledForegroundColor: Colors.white70,
                ),
                child: const Text('Checkout'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
