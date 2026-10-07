import 'package:flutter/material.dart';

class daftarBukuScreen extends StatelessWidget {
  const daftarBukuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Buku'),
      ),
      body: const Center(
        child: Text('Ini adalah halaman Daftar Buku'),
      ),
    );
  }
}