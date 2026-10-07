import 'package:flutter/material.dart';

class SumbangBukuScreen extends StatelessWidget {
  const SumbangBukuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sumbang Buku'),
      ),
      body: const Center(
        child: Text('Ini adalah halaman Sumbang Buku'),
      ),
    );
  }
}