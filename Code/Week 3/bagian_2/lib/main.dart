import 'package:flutter/material.dart';
import 'profile_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas Layout Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        backgroundColor: Colors.grey.shade200,
        appBar: AppBar(title: const Text('Profil Interaktif')),
        body: const Center(
          child: ProfileCard(
            // Ganti dengan data dirimu
            nama: 'Lucas Gabriel Mahatan',
            nim: '20240801012',
            hobi: 'Tidur',
            skorAktivitas: 80,
          ),
        ),
      ),
    );
  }
}