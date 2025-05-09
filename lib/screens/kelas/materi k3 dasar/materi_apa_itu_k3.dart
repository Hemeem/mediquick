import 'package:flutter/material.dart';
import 'materi_manajemen_k3.dart';

class MateriApaItuK3Screen extends StatelessWidget {
  const MateriApaItuK3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF7FA1C3),
      body: Stack(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    'assets/images/materi.jpeg',
                    width: double.infinity,
                    height: 320,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    top: 200,
                    left: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Row(
                          children: [
                            Icon(Icons.timer, color: Colors.white),
                            SizedBox(width: 6),
                            Text(
                              '15 menit',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Apa itu K3?',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              // 🔹 Header
              Container(
                width: double.infinity,
                height: 125,
                padding: const EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 16,
                ),
                decoration: const BoxDecoration(
                  color: Color(0xFF7FA1C3),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(35),
                    bottomRight: Radius.circular(35),
                  ),
                ),
                child: SafeArea(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Pembelajaran K3 Dasar',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black),
                          color: const Color(0xFF88A9D3),
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          'LI',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // 🔹 Konten utama
              Expanded(
                child: Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(top: 160),
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    color: Color(0xFFF5EDED),
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(25),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Tujuan Kursus: Mempelajari dasar-dasar Kesehatan dan Keselamatan Kerja (K3) untuk menciptakan lingkungan kerja yang aman dan sehat, serta mengurangi risiko kecelakaan atau penyakit akibat kerja.',
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          'Apa Itu K3?',
                          style: TextStyle(fontSize: 16),
                        ),
                        const SizedBox(height: 5),
                        Center(
                          child: Image.asset(
                            'assets/images/apaituk3.png',
                            height: 190,
                          ),
                        ),

                        const SizedBox(height: 20),
                        const Text(
                          '1. Pengenalan K3',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        _buildBullet(
                          'K3 adalah upaya menjaga keselamatan & kesehatan pekerja.',
                        ),
                        _buildBullet(
                          'Tujuan: mencegah kecelakaan kerja & penyakit akibat kerja.',
                        ),
                        _buildBullet(
                          'Penting untuk kepatuhan hukum, produktivitas, dan efisiensi.',
                        ),
                        const Text(
                          '2. Identifikasi Bahaya di Tempat Kerja',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        _buildBullet(
                          'Jenis bahaya: fisik, kimia, biologis, ergonomis, psikososial.',
                        ),
                        _buildBullet(
                          'Cara identifikasi: inspeksi rutin, wawancara pekerja, analisis insiden.',
                        ),
                        const Text(
                          '3. Pengendalian Risiko',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        _buildBullet(
                          'Hindari bahaya → kurangi risiko → lindungi pekerja.',
                        ),
                        _buildBullet(
                          'Gunakan APD & beri pelatihan keselamatan secara rutin.',
                        ),
                        const Text(
                          '4. ALat Pelindung Diri (APD)',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        _buildBullet(
                          'Jenis: helm, kacamata, masker, sarung tangan, sepatu pelindung.',
                        ),
                        _buildBullet(
                          'Wajib digunakan dengan benar untuk mencegah cedera.',
                        ),
                        const Text(
                          '5. Pertolongan Pertama',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        _buildBullet(
                          'Cek korban → hubungi bantuan → hentikan pendarahan → posisi aman → CPR jika perlu.',
                        ),
                        _buildBullet(
                          'Pengetahuan ini bisa menyelamatkan nyawa.',
                        ),
                        const Text(
                          '6. Kecelakaan Kerja & Pencegahannya',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        _buildBullet(
                          'Jenis: terjatuh, luka, tersengat listrik, gangguan kesehatan.',
                        ),
                        _buildBullet(
                          'Cegah dengan pelatihan, pemeriksaan rutin, dan pengawasan alat.',
                        ),
                        const Text(
                          '7. Pelatihan & Kesadaran K3',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        _buildBullet('Semua pekerja wajib dilatih.'),
                        _buildBullet(
                          'Materi: APD, prosedur darurat, pencegahan bahaya.',
                        ),
                        const Text(
                          '8. Pemantauan & Evaluasi',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        _buildBullet('Lakukan inspeksi & audit rutin.'),
                        _buildBullet(
                          'Kumpulkan data insiden untuk mencegah terulang.',
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          '✅ Kesimpulan',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          'K3 bukan hanya kewajiban, tapi kebutuhan. Dengan memahami dan menerapkan prinsip K3, kita ciptakan tempat kerja yang aman, sehat, dan produktif.',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                              onPressed: () => Navigator.pop(context),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFFF5EDED),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 32,
                                  vertical: 14,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  side: const BorderSide(
                                    color: Color(0xFF6482AD),
                                  ),
                                ),
                              ),
                              child: const Text(
                                'Kembali',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder:
                                        (_) => const MateriManajemenK3Screen(),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFF6482AD),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 32,
                                  vertical: 14,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              child: const Text(
                                'Lanjutkan',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  static Widget _buildBullet(String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, bottom: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("•  ", style: TextStyle(fontSize: 16)),
          Expanded(child: Text(text)),
        ],
      ),
    );
  }
}
