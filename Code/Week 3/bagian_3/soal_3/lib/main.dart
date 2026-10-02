import 'package:flutter/material.dart';
import 'profile_card.dart';

// GANTI dengan NIM kamu sendiri. Semua nilai styling dihitung dari NIM ini.
const String nimSaya = '20240801012';
const String namaSaya = 'Lucas Gabriel Mahatan';
const String hobiSaya = 'Tidur';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final int digitTerakhir = int.parse(nimSaya[nimSaya.length - 1]);
    final bool ganjil = digitTerakhir % 2 != 0;

    return MaterialApp(
      title: 'Tugas Layout Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Ganjil -> tealAccent[100], Genap -> amber[100]
        scaffoldBackgroundColor:
            ganjil ? Colors.tealAccent[100] : Colors.amber[100],
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Skor aktivitas = (2 digit terakhir NIM) + 50
    final int duaDigitTerakhir =
        int.parse(nimSaya.substring(nimSaya.length - 2));
    final int skorAktivitas = duaDigitTerakhir + 50;

    return Scaffold(
      body: Center(
        child: ProfileCard(
          nama: namaSaya,
          nim: nimSaya,
          hobi: hobiSaya,
          skorAktivitas: skorAktivitas,
        ),
      ),
    );
  }
}