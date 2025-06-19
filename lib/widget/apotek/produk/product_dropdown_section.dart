import 'package:flutter/material.dart';

class ProductDropdownSection extends StatelessWidget {
  final String? selectedVariant;
  final String? selectedSize;
  final Function(String variant, String size) onSelected;

  const ProductDropdownSection({
    super.key,
    required this.selectedVariant,
    required this.selectedSize,
    required this.onSelected,
  });

  void _showVariantSizeDialog(BuildContext context) {
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
                  onSelected(tempVariant!, tempSize!);
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
    return GestureDetector(
      onTap: () => _showVariantSizeDialog(context),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        decoration: BoxDecoration(
          color: const Color(0xFF7AA5D2),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                selectedVariant != null && selectedSize != null
                    ? '$selectedVariant - $selectedSize'
                    : '-- PILIH --',
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Icon(Icons.arrow_drop_down, color: Colors.white),
          ],
        ),
      ),
    );
  }
}
