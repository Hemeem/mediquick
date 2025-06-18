import 'package:flutter/material.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3EDEB),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: const BackButton(color: Colors.black),
        title: const Text('Alamat Anda', style: TextStyle(color: Colors.black)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Kartu alamat yang bisa diklik
            GestureDetector(
              onTap: () {
                // Mengirim alamat ke CheckoutScreen
                Navigator.pop(context, {
                  'name': 'Hammam Rofif',
                  'phone': '08123456789',
                  'address':
                      'Perumahan Taman Raya Tahap 2 Blok D1 No. 9, Kel. Belian, ...',
                });
              },
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: const Color(0xFF7FA1C3),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(Icons.location_on, color: Colors.white),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Marcella Corazon',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Icon(Icons.edit, size: 18, color: Colors.white),
                            ],
                          ),
                          SizedBox(height: 4),
                          Text(
                            '(+62)8333377770',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Perumahan Taman Raya Tahap 2 Blok D1 No. 9, Kel. Belian, Kec. Batam Kota, Kota Batam, Kepulauan Riau 29463',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Tombol Tambah Alamat (tidak mengirim apa-apa)
            ElevatedButton.icon(
              onPressed: () {
                // Aksi untuk tambah alamat baru
              },
              icon: const Icon(Icons.add_location_alt_outlined),
              label: const Text('Tambahkan Alamat'),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF8FAAC7),
                minimumSize: const Size.fromHeight(50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
