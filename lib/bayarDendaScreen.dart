import 'package:flutter/material.dart';

class BayarDendaScreen extends StatelessWidget {
  const BayarDendaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bayar Denda'),
      ),
      body: const Center(
        child: Text('Ini adalah halaman Bayar Denda'),
      ),
    );
  }
}