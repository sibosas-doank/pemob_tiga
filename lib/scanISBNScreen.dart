import 'package:flutter/material.dart';

class ScanISBNScreen extends StatelessWidget {
  const ScanISBNScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scan ISBN'),
      ),
      body: const Center(
        child: Text('Ini adalah halaman Scan ISBN'),
      ),
    );
  }
}