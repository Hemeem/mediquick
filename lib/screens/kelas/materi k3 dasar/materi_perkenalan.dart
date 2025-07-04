import 'package:flutter/material.dart';
import 'materi_apa_itu_k3.dart';

class MateriPerkenalanScreen extends StatelessWidget {
  const MateriPerkenalanScreen({super.key});

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
                          'Selamat Datang di Kelas K3 Dasar',
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
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: Image.asset(
                                'assets/images/maskot.jpg',
                                height: 280,
                              ),
                            ),
                            const SizedBox(width: 10),
                          ],
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          '🧠 Sesi Pembuka: Menit Penuh Perhatian',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Sebelum memulai, mari lakukan latihan sederhana untuk menenangkan pikiran—kunci utama saat menghadapi situasi darurat seperti kecelakaan kerja.\n'
                          'Latihan Regangan: Berdiri tegak, tarik napas sambil angkat tangan ke atas, renggangkan tubuh. Hembuskan napas perlahan sambil turunkan tangan. Ulangi beberapa kali. Latihan ini membantu menenangkan sistem saraf dan meningkatkan fokus.\n',
                        ),
                        const Text(
                          '✨ Mengapa Kesadaran Penuh Penting dalam K3?',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          'Kesadaran penuh (mindfulness) membantu kita tetap tenang, fokus, dan responsif dalam situasi darurat.\n'
                          'Manfaatnya:',
                        ),
                        const SizedBox(height: 8),
                        _buildBullet('✅ Mengurangi stres & kecemasan'),
                        _buildBullet(
                          '✅ Membantu pengambilan keputusan cepat & tepat',
                        ),
                        _buildBullet(
                          '✅ Mengendalikan emosi saat keadaan genting',
                        ),
                        _buildBullet('✅ Menjaga kesejahteraan emosional'),
                        const SizedBox(height: 12),
                        const Text(
                          '🧘 Kesadaran Penuh = Keterampilan K3\n'
                          'Kesadaran penuh bisa dilatih dan sangat berhubungan dengan praktik K3 dan pertolongan pertama. Ini mendukung pengendalian diri, fokus, dan respons yang efektif.\n',
                        ),
                        const Text(
                          '📖 Cerita Inspiratif: Kosongkan Cangkirmu\n'
                          'Seorang guru bijak berkata, untuk belajar hal baru, kosongkan dulu “cangkir” kita. Isi artinya: tetap terbuka, tidak buru-buru mengambil keputusan, dan siap menghadapi hal tak terduga dengan tenang.\n',
                        ),
                        const Text(
                          '💬 Refleksi Singkat:\n'
                          'Apakah kamu siap mengosongkan “cangkir” saat menghadapi situasi darurat? Ketenangan dan keterbukaan adalah kunci dalam memberi pertolongan pertama yang efektif.\n',
                        ),
                        const Text(
                          '🎖️ Lencana Eksplorasi Kesadaran Penuh\n'
                          'Selesaikan sesi ini dan raih Lencana Eksplorasi Kesadaran Penuh – bukti bahwa kamu siap menerapkan mindfulness dalam praktik K3 dan pertolongan pertama.\n',
                        ),
                        const SizedBox(height: 20),
                        Center(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => const MateriApaItuK3Screen(),
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
