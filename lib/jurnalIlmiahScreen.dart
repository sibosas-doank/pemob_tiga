import 'package:flutter/material.dart';

class JurnalIlmiahScreen extends StatelessWidget {
  const JurnalIlmiahScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jurnal Ilmiah'),
      ),
      body: const Center(
        child: Text('Ini adalah halaman Jurnal Ilmiah'),
      ),
    );
  }
}