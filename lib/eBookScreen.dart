import 'package:flutter/material.dart';

class EbookScreen extends StatelessWidget {
  const EbookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('E-Book'),
      ),
      body: const Center(
        child: Text('Ini adalah halaman E-Book'),
      ),
    );
  }
}