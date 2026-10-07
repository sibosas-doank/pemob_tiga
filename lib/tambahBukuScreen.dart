import 'package:flutter/material.dart';

class tambahBuku extends StatelessWidget {
  const tambahBuku({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tambah Buku'),
        backgroundColor: Colors.green,
      ),
    );
  }
}