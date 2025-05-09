import 'package:flutter/material.dart';

import 'sertifikat.dart';

class KuisScreen extends StatefulWidget {
  const KuisScreen({super.key});

  @override
  State<KuisScreen> createState() => _ClassQuizScreenState();
}

class _ClassQuizScreenState extends State<KuisScreen> {
  int? selectedOption1;
  int? selectedOption2;
  int? selectedOption3;

  void _showCompletionDialog(BuildContext context) {
    showDialog(
      context: context,
      builder:
          (_) => AlertDialog(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            title: const Text(
              "Selamat Anda Telah Menyelesaikan Kelas",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            content: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                      side: const BorderSide(color: Color(0xFF6482AD)),
                    ),
                  ),
                  child: const Text(
                    'Nanti Saja',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const SertifikatScreen(),
                      ),
                      (route) => false,
                    );
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xFF6482AD),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                      side: const BorderSide(color: Color(0xFF6482AD)),
                    ),
                  ),
                  child: const Text(
                    'Lihat Sertifikat',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          ),
    );
  }

  Widget buildQuizQuestion({
    required int questionNumber,
    required String question,
    required List<String> options,
    required int? selectedOption,
    required Function(int?) onChanged,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$questionNumber. $question',
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 6),
        ...options.asMap().entries.map((entry) {
          final index = entry.key;
          final text = entry.value;
          return RadioListTile<int>(
            title: Text(text),
            value: index,
            groupValue: selectedOption,
            onChanged: onChanged,
          );
        }),
        const SizedBox(height: 20),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF7FA1C3),
      body: Stack(
        children: [
          // Gambar dengan teks di atasnya
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
                          'Kuis',
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
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 125,
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
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
          ),

          // Konten kuis di bawah gambar
          Positioned.fill(
            top: 285,
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xFFF5EDED),
                borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
              ),
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    buildQuizQuestion(
                      questionNumber: 1,
                      question:
                          "Apa tujuan utama dari Kesehatan dan Keselamatan Kerja (K3)?",
                      options: [
                        "Meningkatkan produktivitas kerja",
                        "Melindungi pekerja dari kecelakaan dan penyakit akibat kerja",
                        "Mengurangi biaya operasional perusahaan",
                        "Semua jawaban benar",
                      ],
                      selectedOption: selectedOption1,
                      onChanged: (val) => setState(() => selectedOption1 = val),
                    ),
                    buildQuizQuestion(
                      questionNumber: 2,
                      question:
                          "Apa yang dimaksud dengan 'Identifikasi Bahaya' di tempat kerja?",
                      options: [
                        "Menyusun anggaran keselamatan",
                        "Mencari dan mengenali potensi bahaya di lingkungan kerja",
                        "Membuat laporan kecelakaan kerja",
                        "Menggunakan alat pelindung diri (APD)",
                      ],
                      selectedOption: selectedOption2,
                      onChanged: (val) => setState(() => selectedOption2 = val),
                    ),
                    buildQuizQuestion(
                      questionNumber: 3,
                      question:
                          "Alat Pelindung Diri (APD) digunakan untuk tujuan berikut, kecuali:",
                      options: [
                        "Melindungi pekerja dari bahaya di tempat kerja",
                        "Meningkatkan kenyamanan pekerja",
                        "Menurunkan risiko kecelakaan dan cedera",
                        "Mengurangi penyakit akibat bahan kimia berbahaya",
                      ],
                      selectedOption: selectedOption3,
                      onChanged: (val) => setState(() => selectedOption3 = val),
                    ),
                    buildQuizQuestion(
                      questionNumber: 4,
                      question:
                          "Apa yang harus dilakukan pertama kali dalam pertolongan pertama saat terjadi kecelakaan di tempat kerja?",
                      options: [
                        "Segera menghubungi petugas medis",
                        "Cek kondisi korban (apakah sadar dan bernapas)",
                        "Memberikan obat-obatan",
                        "Menunggu ambulans tiba",
                      ],
                      selectedOption: selectedOption3,
                      onChanged: (val) => setState(() => selectedOption3 = val),
                    ),
                    buildQuizQuestion(
                      questionNumber: 5,
                      question:
                          "Manakah dari berikut ini yang termasuk dalam langkah pengendalian risiko K3?",
                      options: [
                        "Menghindari bahaya",
                        "Menyediakan fasilitas olahraga untuk pekerja",
                        "Menyusun anggaran untuk gaji karyawan",
                        "Mengubah produk yang dihasilkan",
                      ],
                      selectedOption: selectedOption3,
                      onChanged: (val) => setState(() => selectedOption3 = val),
                    ),
                    buildQuizQuestion(
                      questionNumber: 6,
                      question:
                          "Apa itu Sistem Manajemen Keselamatan dan Kesehatan Kerja (SMK3)?",
                      options: [
                        "Sebuah sistem untuk mengelola risiko keselamatan kerja secara sistematis",
                        "Program untuk meningkatkan produktivitas pekerja",
                        "Sistem untuk mengontrol gaji karyawan",
                        "Program pengembangan keterampilan manajerial",
                      ],
                      selectedOption: selectedOption3,
                      onChanged: (val) => setState(() => selectedOption3 = val),
                    ),
                    buildQuizQuestion(
                      questionNumber: 7,
                      question:
                          "Apa yang termasuk dalam bahaya fisik di tempat kerja?",
                      options: [
                        "Paparan gas berbahaya",
                        "Kelelahan mental",
                        "Suhu ekstrem atau kebisingan",
                        "Gangguan postur tubuh",
                      ],
                      selectedOption: selectedOption3,
                      onChanged: (val) => setState(() => selectedOption3 = val),
                    ),
                    buildQuizQuestion(
                      questionNumber: 8,
                      question:
                          "Apa langkah pertama yang harus diambil jika terjadi kecelakaan kerja?",
                      options: [
                        "Mencari tahu penyebab kecelakaan",
                        "Menghentikan aktivitas di sekitar lokasi kecelakaan",
                        "Langsung mengobati korban",
                        "Melaporkan ke pihak berwajib",
                      ],
                      selectedOption: selectedOption3,
                      onChanged: (val) => setState(() => selectedOption3 = val),
                    ),
                    buildQuizQuestion(
                      questionNumber: 9,
                      question:
                          "Dalam konteks K3, apa yang dimaksud dengan (Budaya Keselamatan) ?",
                      options: [
                        "Proses pembuatan laporan kecelakaan",
                        "Sikap dan perilaku organisasi terhadap keselamatan kerja",
                        "Proses peninjauan anggaran untuk peralatan keselamatan",
                        "Menyediakan makanan sehat di tempat kerja",
                      ],
                      selectedOption: selectedOption3,
                      onChanged: (val) => setState(() => selectedOption3 = val),
                    ),
                    buildQuizQuestion(
                      questionNumber: 10,
                      question: "Apa yang dimaksud dengan Kesehatan Kerja?",
                      options: [
                        "Penyakit yang timbul akibat paparan bahan kimia atau fisik di tempat kerja",
                        "Melindungi pekerja dari stres mental",
                        "Menyediakan layanan medis di tempat kerja",
                        "Meningkatkan keterampilan teknis pekerja",
                      ],
                      selectedOption: selectedOption3,
                      onChanged: (val) => setState(() => selectedOption3 = val),
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
                              side: const BorderSide(color: Color(0xFF6482AD)),
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
                          onPressed: () => _showCompletionDialog(context),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF6482AD),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 32,
                              vertical: 14,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: const Text(
                            'Selesai',
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
    );
  }
}
