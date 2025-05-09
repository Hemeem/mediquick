import 'package:flutter/material.dart';
import 'kuis.dart';

class MateriManajemenK3Screen extends StatelessWidget {
  const MateriManajemenK3Screen({super.key});

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
                          'Manajemen K3 Dasar',
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
                          'Selamat datang di kelas online "Pengenalan Sistem Manajemen K3 (SMK3)".\nDi course ini, kamu akan mempelajari dasar-dasar SMK3 secara mudah, jelas, dan aplikatif—langsung dari sumber hukum resmi dan praktik terbaik di lapangan.\nYuk, pahami bagaimana menciptakan tempat kerja yang aman, sehat, dan efisien!',
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          'Tujuan Kursus: Mempelajari dasar-dasar Kesehatan dan Keselamatan Kerja (K3) untuk menciptakan lingkungan kerja yang aman dan sehat, serta mengurangi risiko kecelakaan atau penyakit akibat kerja.',
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          'Sistem Manajemen K3',
                          style: TextStyle(fontSize: 16),
                        ),
                        const SizedBox(height: 5),
                        Center(
                          child: Image.asset(
                            'assets/images/sistemmanajemenk3.png',
                            height: 190,
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          'Dalam dunia kerja, keselamatan dan kesehatan kerja (K3) adalah hal yang tidak bisa ditawar. Untuk itu, diterapkanlah Sistem Manajemen K3 (SMK3) sebagai upaya sistematis dalam menciptakan lingkungan kerja yang aman, sehat, dan produktif.',
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          '1. SMK3 adalah bagian dari sistem manajemen perusahaan untuk menjamin keselamatan dan kesehatan kerja (K3).',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          '2. Dasar hukum: UU No. 13 Tahun 2003 Pasal 87 dan PP No. 50 Tahun 2012.',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          '3. Komponen utama SMK3: kebijakan, perencanaan, pelaksanaan, evaluasi, dan peningkatan berkelanjutan.',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          '4. Tujuan: mengendalikan risiko di tempat kerja secara efisien dan efektif.',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          '5. Manfaat: meningkatkan perlindungan K3, mencegah kecelakaan/penyakit kerja, menciptakan tempat kerja aman dan nyaman.',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          '6. Sanksi jika tidak diterapkan: mulai dari teguran hingga pencabutan izin usaha.',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 50),
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
                                    builder: (_) => const KuisScreen(),
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
}
