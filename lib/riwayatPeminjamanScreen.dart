import 'package:flutter/material.dart';

class RiwayatPeminjamanScreen extends StatelessWidget {
  const RiwayatPeminjamanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Riwayat Peminjaman'),
      ),
      body: const Center(
        child: Text('Ini adalah halaman Riwayat Peminjaman'),
      ),
    );
  }
}