import 'package:flutter/material.dart';

class AudiobookScreen extends StatelessWidget {
  const AudiobookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Audiobook'),
      ),
      body: const Center(
        child: Text('Ini adalah halaman Audiobook'),
      ),
    );
  }
}