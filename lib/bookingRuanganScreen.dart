import 'package:flutter/material.dart';

class BookingRuanganScreen extends StatelessWidget {
  const BookingRuanganScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Booking Ruangan'),
      ),
      body: const Center(
        child: Text('Ini adalah halaman Booking Ruangan'),
      ),
    );
  }
}