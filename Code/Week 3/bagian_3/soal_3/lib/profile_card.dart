import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final String nama;
  final String nim;
  final String hobi;
  final int skorAktivitas;

  const ProfileCard({
    super.key,
    required this.nama,
    required this.nim,
    required this.hobi,
    required this.skorAktivitas,
  });

  @override
  Widget build(BuildContext context) {
    // Digit NIM yang dipakai untuk rumus styling
    final int digitTerakhir = int.parse(nim[nim.length - 1]);
    final int digitKeDuaDariBelakang = int.parse(nim[nim.length - 2]);

    // Rumus nilai wajib
    final double lebarKartu = 320.0 + (digitKeDuaDariBelakang * 5);
    final double sudutMelengkung = 12.0 + (digitTerakhir * 1.5);
    final double ukuranLogo = 60.0 + (digitTerakhir * 2);
    final double jarakPemisah = 15.0 + digitTerakhir;

    // Root kartu: Container dengan BoxDecoration
    return Container(
      width: lebarKartu,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(sudutMelengkung),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26, // hitam transparan
            blurRadius: 10.0,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Header kartu (Row)
          Row(
            children: [
              // Sisi kiri: FlutterLogo dibungkus Container melengkung
              Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(sudutMelengkung),
                  border: Border.all(color: Colors.blue, width: 2),
                ),
                child: FlutterLogo(size: ukuranLogo),
              ),
              // Jarak horizontal
              SizedBox(width: jarakPemisah),
              // Sisi kanan: Column rata kiri
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Kartu Praktikan',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      nama,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          const Divider(thickness: 1.5),
          const SizedBox(height: 12),
          // Detail identitas (Column)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                child: Text(
                  'NIM: $nim',
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(height: 8),
              SizedBox(
                width: double.infinity,
                child: Text(
                  'Hobi: $hobi',
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(height: 8),
              SizedBox(
                width: double.infinity,
                child: Text(
                  'Skor Aktivitas: $skorAktivitas',
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}