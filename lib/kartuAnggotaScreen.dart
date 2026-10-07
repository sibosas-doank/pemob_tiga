import 'package:flutter/material.dart';

class KartuAnggotaScreen extends StatelessWidget {
  const KartuAnggotaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kartu Anggota'),
      ),
      body: const Center(
        child: Text('Ini adalah halaman Kartu Anggota'),
      ),
    );
  }
}