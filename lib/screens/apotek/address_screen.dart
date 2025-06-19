import 'package:flutter/material.dart';
import 'package:mediquick/screens/apotek/add_address_screen.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Daftar alamat yang akan ditampilkan
    final List<Map<String, String>> addressList = [
      {
        'name': 'Marcella Corazon',
        'phone': '(+62)8333377770',
        'address':
            'Perumahan Taman Raya Tahap 2 Blok D1 No. 9, Kel. Belian, Kec. Batam Kota, Kota Batam, Kepulauan Riau 29463',
      },
      {
        'name': 'Hammam Abror Rofif',
        'phone': ' (+628123456789',
        'address':
            'Komplek Pustu No.7 Tiban 2, Kel. Patam Lestari, Kec. Sekupang, Kota Batam, Kepulauan Riau 17132',
      },
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFF5EDED),
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
            // List Kartu Alamat
            Expanded(
              child: ListView.separated(
                itemCount: addressList.length,
                separatorBuilder: (_, __) => const SizedBox(height: 16),
                itemBuilder: (context, index) {
                  final address = addressList[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.pop(context, address);
                    },
                    child: Container(
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
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      address['name'] ?? '',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                    const Icon(
                                      Icons.edit,
                                      size: 18,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  address['phone'] ?? '',
                                  style: const TextStyle(color: Colors.white),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  address['address'] ?? '',
                                  style: const TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 20),

            // Tombol Tambah Alamat
            ElevatedButton.icon(
              onPressed: () async {
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AddAddressScreen(),
                  ),
                );
                if (result != null && context.mounted) {
                  Navigator.pop(context, result);
                }
              },
              icon: const Icon(
                Icons.add_location_alt_outlined,
                color: Colors.white,
              ),
              label: const Text(
                'Tambahkan Alamat',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
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
