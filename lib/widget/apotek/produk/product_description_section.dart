import 'package:flutter/material.dart';

class ProductDescriptionSection extends StatelessWidget {
  const ProductDescriptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        SizedBox(height: 24),
        Text('📌 Detail Produk', style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 8),
        Text(
          'Suplemen Whey Protein Isolate berkualitas tinggi untuk membantu membangun otot, mempercepat pemulihan, dan mendukung kebutuhan protein harian Anda.',
        ),
        SizedBox(height: 16),
        Text(
          '🟢 Informasi Gizi (Per 30g):',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 4),
        Text(
          '• Protein: 25g\n• Kalori: 120 kkal\n• Karbohidrat: 2g\n• Lemak: 1g\n• Gula: 1g',
        ),
        SizedBox(height: 16),
        Text('🍧 Varian Rasa:', style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 4),
        Text('• Cokelat\n• Vanilla\n• Strawberry\n• Cookies & Cream'),
        SizedBox(height: 16),
        Text(
          '🕒 Cara Konsumsi:',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 4),
        Text('Konsumsi 1 scoop setelah latihan atau sesuai kebutuhan.'),
        SizedBox(height: 16),
        Text(
          'ℹ️ Informasi Tambahan:',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 4),
        Text(
          '• Aman untuk diet cutting/bulking\n• Tidak dianjurkan untuk penderita alergi susu\n• Simpan di tempat sejuk & kering',
        ),
        SizedBox(height: 40),
      ],
    );
  }
}
