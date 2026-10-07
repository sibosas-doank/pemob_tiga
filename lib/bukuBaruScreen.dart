import 'package:flutter/material.dart';

class BukuBaruScreen extends StatelessWidget {
  const BukuBaruScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buku Baru'),
      ),
      body: const Center(
        child: Text('Ini adalah halaman Buku Baru'),
      ),
    );
  }
}