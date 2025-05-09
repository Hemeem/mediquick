import 'package:flutter/material.dart';

class SertifikatScreen extends StatelessWidget {
  const SertifikatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Logo MEDIQUICK dan background gelombang
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 24,
                ),
                decoration: const BoxDecoration(color: Color(0xFF7FA1C3)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/logo.png', height: 100),
                    const SizedBox(height: 24),
                    const Text(
                      'Lorem Ipsum, Anda mendapat sertifikat!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 12),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        'Selamat! Pencapaian Anda telah dirangkum dalam halaman ini. Bagikan dengan keluarga, teman, dan rekan kerja melalui jejaring sosial maupun profesional untuk merayakan keberhasilan ini.',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {
                        // Cetak atau download sertifikat di sini
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF6E8FB8),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: const EdgeInsets.symmetric(
                          vertical: 12,
                          horizontal: 24,
                        ),
                      ),
                      child: const Text(
                        'Cetak Sertifikat',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(height: 24),
                  ],
                ),
              ),

              // Gambar sertifikat
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset(
                  'assets/images/sertifikat.jpg',
                  fit: BoxFit.contain,
                ),
              ),

              // Bagikan pencapaianmu
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 24),
                decoration: const BoxDecoration(color: Color(0xFF7FA1C3)),
                child: Column(
                  children: [
                    const Text(
                      'Bagikan pencapaianmu',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildSocialIcon('assets/icons/instagram.png'),
                        const SizedBox(width: 16),
                        _buildSocialIcon('assets/icons/facebook.png'),
                        const SizedBox(width: 16),
                        _buildSocialIcon('assets/icons/linkedin.png'),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSocialIcon(String assetPath) {
    return CircleAvatar(
      backgroundColor: Color(0xFF7FA1C3),
      radius: 24,
      child: Image.asset(assetPath, height: 50, width: 50),
    );
  }
}
