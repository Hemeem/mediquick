import 'package:flutter/material.dart';
import 'package:mediquick/screens/apotek/cart_screen.dart';
import 'package:mediquick/screens/apotek/checkout_screen.dart';
import 'package:mediquick/widget/apotek/cart_item.dart';
import 'package:mediquick/widget/apotek/cart_provider.dart';
import 'package:provider/provider.dart';
import 'package:badges/badges.dart' as badges;

class ProductDetailScreen extends StatefulWidget {
  final String imagePath;
  final String title;
  final String price;
  final String pharmacyName;
  final String location;

  const ProductDetailScreen({
    super.key,
    required this.imagePath,
    required this.title,
    required this.price,
    required this.pharmacyName,
    required this.location,
  });

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  String? selectedVariant;
  String? selectedSize;
  int quantity = 1;

  void _showVariantSizeDialog() {
    String? tempVariant = selectedVariant;
    String? tempSize = selectedSize;

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          title: const Text(
            'Pilih Varian & Ukuran',
            style: TextStyle(fontSize: 20),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "VARIAN",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                title: const Text('Coklat'),
                leading: Radio<String>(
                  value: 'Coklat',
                  groupValue: tempVariant,
                  onChanged: (value) {
                    tempVariant = value;
                    (context as Element).markNeedsBuild();
                  },
                ),
              ),
              ListTile(
                title: const Text('Vanila'),
                leading: Radio<String>(
                  value: 'Vanila',
                  groupValue: tempVariant,
                  onChanged: (value) {
                    tempVariant = value;
                    (context as Element).markNeedsBuild();
                  },
                ),
              ),
              const SizedBox(height: 16),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "UKURAN",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                title: const Text('30 ml'),
                leading: Radio<String>(
                  value: '30 ml',
                  groupValue: tempSize,
                  onChanged: (value) {
                    tempSize = value;
                    (context as Element).markNeedsBuild();
                  },
                ),
              ),
              ListTile(
                title: const Text('50 ml'),
                leading: Radio<String>(
                  value: '50 ml',
                  groupValue: tempSize,
                  onChanged: (value) {
                    tempSize = value;
                    (context as Element).markNeedsBuild();
                  },
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              child: const Text('Batal'),
              onPressed: () => Navigator.pop(context),
            ),
            ElevatedButton(
              onPressed: () {
                if (tempVariant != null && tempSize != null) {
                  setState(() {
                    selectedVariant = tempVariant;
                    selectedSize = tempSize;
                  });
                  Navigator.pop(context);
                }
              },
              child: const Text('Pilih'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);

    return Scaffold(
      backgroundColor: const Color(0xFFF5EDED),
      bottomNavigationBar: Container(
        color: const Color(0xFFDDE6F0),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          children: [
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
            Expanded(
              child: OutlinedButton.icon(
                onPressed:
                    selectedVariant != null && selectedSize != null
                        ? () {
                          final cartItem = CartItem(
                            name: widget.title,
                            image: widget.imagePath,
                            variant: selectedVariant!,
                            size: selectedSize!,
                            quantity: quantity,
                            price: int.parse(
                              widget.price.replaceAll(RegExp(r'[^0-9]'), ''),
                            ),
                          );
                          cart.addItem(cartItem);
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Produk ditambahkan ke keranjang"),
                            ),
                          );
                        }
                        : null,
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
            Expanded(
              child: Container(
                height: 48,
                decoration: BoxDecoration(
                  gradient:
                      selectedVariant != null && selectedSize != null
                          ? const LinearGradient(
                            colors: [Color(0xFF7FA1C3), Color(0xFF4B6D92)],
                          )
                          : const LinearGradient(
                            colors: [Colors.grey, Colors.grey],
                          ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ElevatedButton(
                  onPressed:
                      selectedVariant != null && selectedSize != null
                          ? () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder:
                                    (context) => CheckoutScreen(
                                      productName: widget.title,
                                      productImage: widget.imagePath,
                                      productVariant: selectedVariant!,
                                      productSize: selectedSize!,
                                      quantity: quantity,
                                      productPrice: int.parse(
                                        widget.price.replaceAll(
                                          RegExp(r'[^0-9]'),
                                          '',
                                        ),
                                      ),
                                    ),
                              ),
                            );
                          }
                          : null,
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
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Gambar produk dengan tombol back & keranjang
              Stack(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 400,
                    child: Image.asset(widget.imagePath, fit: BoxFit.cover),
                  ),
                  Positioned(
                    top: 16,
                    left: 16,
                    right: 16,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white.withOpacity(0.9),
                          child: IconButton(
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Colors.black,
                            ),
                            onPressed: () => Navigator.pop(context),
                          ),
                        ),
                        badges.Badge(
                          position: badges.BadgePosition.topEnd(
                            top: -6,
                            end: -6,
                          ),
                          showBadge: cart.items.isNotEmpty,
                          badgeContent: Text(
                            '${cart.items.length}',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                            ),
                          ),
                          badgeStyle: const badges.BadgeStyle(
                            badgeColor: Colors.red,
                          ),
                          child: CircleAvatar(
                            backgroundColor: Colors.white.withOpacity(0.9),
                            child: IconButton(
                              icon: const Icon(
                                Icons.shopping_cart_outlined,
                                color: Colors.black,
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => const CartScreen(),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 12),
                    Text(
                      widget.title,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text("Suplemen Protein"),
                    Text(widget.price, style: const TextStyle(fontSize: 16)),
                    const SizedBox(height: 12),

                    // Dropdown & Quantity
                    Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: GestureDetector(
                            onTap: _showVariantSizeDialog,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 14,
                              ),
                              decoration: BoxDecoration(
                                color: const Color(0xFF7AA5D2),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      selectedVariant != null &&
                                              selectedSize != null
                                          ? '$selectedVariant - $selectedSize'
                                          : '-- PILIH --',
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  const Icon(
                                    Icons.arrow_drop_down,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            children: [
                              IconButton(
                                icon: const Icon(Icons.remove),
                                onPressed: () {
                                  if (quantity > 1) {
                                    setState(() => quantity--);
                                  }
                                },
                              ),
                              Text(
                                quantity.toString(),
                                style: const TextStyle(fontSize: 16),
                              ),
                              IconButton(
                                icon: const Icon(Icons.add),
                                onPressed: () => setState(() => quantity++),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 12),
                    const Divider(thickness: 1, color: Colors.grey),
                    const SizedBox(height: 12),
                    Text(
                      widget.pharmacyName,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(widget.location),
                    const SizedBox(height: 12),
                    const Divider(thickness: 1, color: Colors.grey),

                    // Description Section
                    const SizedBox(height: 24),
                    const Text(
                      '📌 Detail Produk',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Suplemen Whey Protein Isolate berkualitas tinggi untuk membantu membangun otot, mempercepat pemulihan, dan mendukung kebutuhan protein harian Anda.',
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      '🟢 Informasi Gizi (Per 30g):',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      '• Protein: 25g\n• Kalori: 120 kkal\n• Karbohidrat: 2g\n• Lemak: 1g\n• Gula: 1g',
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      '🍧 Varian Rasa:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      '• Cokelat\n• Vanilla\n• Strawberry\n• Cookies & Cream',
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      '🕒 Cara Konsumsi:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      'Konsumsi 1 scoop setelah latihan atau sesuai kebutuhan.',
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'ℹ️ Informasi Tambahan:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      '• Aman untuk diet cutting/bulking\n• Tidak dianjurkan untuk penderita alergi susu\n• Simpan di tempat sejuk & kering',
                    ),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
