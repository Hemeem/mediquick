import 'package:flutter/material.dart';
import 'package:mediquick/widget/apotek/produk/product_bottom_bar.dart';
import 'package:mediquick/widget/apotek/produk/product_description_section.dart';
import 'package:mediquick/widget/apotek/produk/product_dropdown_section.dart';
import 'package:mediquick/widget/apotek/produk/product_image_section.dart';
import 'package:mediquick/widget/apotek/produk/product_info_section.dart';
import 'package:mediquick/widget/apotek/produk/product_pharmacy_info.dart';
import 'package:mediquick/widget/apotek/produk/product_quantity_section.dart';
import 'package:mediquick/screens/apotek/checkout_screen.dart'; // Tambahkan file ini nanti

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: ProductBottomBar(
        isCheckoutEnabled: selectedVariant != null && selectedSize != null,
        onCheckout: () {
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
                      widget.price.replaceAll(RegExp(r'[^0-9]'), ''),
                    ),
                  ),
            ),
          );
        },
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProductImageSection(imagePath: widget.imagePath),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 12),
                    ProductInfoSection(
                      title: widget.title,
                      price: widget.price,
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: ProductDropdownSection(
                            selectedVariant: selectedVariant,
                            selectedSize: selectedSize,
                            onSelected: (variant, size) {
                              setState(() {
                                selectedVariant = variant;
                                selectedSize = size;
                              });
                            },
                          ),
                        ),
                        const SizedBox(width: 12),
                        ProductQuantitySection(
                          quantity: quantity,
                          onAdd: () => setState(() => quantity++),
                          onRemove: () {
                            if (quantity > 1) setState(() => quantity--);
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    const Divider(thickness: 1, color: Colors.grey),
                    const SizedBox(height: 12),
                    ProductPharmacyInfo(
                      pharmacyName: widget.pharmacyName,
                      location: widget.location,
                    ),
                    const SizedBox(height: 12),
                    const Divider(thickness: 1, color: Colors.grey),
                    const ProductDescriptionSection(),
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
