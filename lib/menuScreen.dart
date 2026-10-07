import 'package:flutter/material.dart';

class menuScreen extends StatelessWidget {
  const menuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        foregroundColor: Colors.white,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.lightBlueAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        title: const Text(
          'Menu Aplikasi',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
          child: Column(
            children: [
              // Baris Pertama
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Container(
                      width: 65,
                      height: 65,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade50,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(
                        Icons.library_books,
                        color: Colors.blue.shade700,
                        size: 40,
                      )
                    ),
                    const SizedBox(height: 5),
                    SizedBox(
                      width: 75,
                      child: Text(
                        'Daftar Buku',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 65,
                      height: 65,
                      decoration: BoxDecoration(
                        color: Colors.orange.shade50,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(
                        Icons.qr_code,
                        color: Colors.orange.shade700,
                        size: 40,
                      )
                    ),
                    const SizedBox(height: 5),
                    SizedBox(
                      width: 75,
                      child: Text(
                        'Scan ISBN',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 65,
                      height: 65,
                      decoration: BoxDecoration(
                        color: Colors.green.shade50,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(
                        Icons.badge,
                        color: Colors.green.shade700,
                        size: 40,
                      )
                    ),
                    const SizedBox(height: 5),
                    SizedBox(
                      width: 75,
                      child: Text(
                        'Kartu Anggota',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 65,
                      height: 65,
                      decoration: BoxDecoration(
                        color: Colors.purple.shade50,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(
                        Icons.history,
                        color: Colors.purple.shade700,
                        size: 40,
                      )
                    ),
                    const SizedBox(height: 5),
                    SizedBox(
                      width: 75,
                      child: Text(
                        'Riwayat Peminjaman',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12),
                      ),
                    )
                  ],
                )
              ],),

              const SizedBox(height: 18),

              // Baris Kedua
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Container(
                      width: 65,
                      height: 65,
                      decoration: BoxDecoration(
                        color: Colors.red.shade50,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(
                        Icons.tablet_mac,
                        color: Colors.red.shade700,
                        size: 40,
                      )
                    ),
                    const SizedBox(height: 5),
                    SizedBox(
                      width: 75,
                      child: Text(
                        'E-book',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 65,
                      height: 65,
                      decoration: BoxDecoration(
                        color: Colors.teal.shade50,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(
                        Icons.headphones,
                        color: Colors.teal.shade700,
                        size: 40,
                      )
                    ),
                    const SizedBox(height: 5),
                    SizedBox(
                      width: 75,
                      child: Text(
                        'Audiobook',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 65,
                      height: 65,
                      decoration: BoxDecoration(
                        color: Colors.indigo.shade50,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(
                        Icons.article,
                        color: Colors.indigo.shade700,
                        size: 40,
                      )
                    ),
                    const SizedBox(height: 5),
                    SizedBox(
                      width: 75,
                      child: Text(
                        'Jurnal Ilmiah',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 65,
                      height: 65,
                      decoration: BoxDecoration(
                        color: Colors.amber.shade50,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(
                        Icons.new_releases,
                        color: Colors.amber.shade800,
                        size: 40,
                      )
                    ),
                    const SizedBox(height: 5),
                    SizedBox(
                      width: 75,
                      child: Text(
                        'Buku Baru',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12),
                      ),
                    )
                  ],
                )
              ],),

              const SizedBox(height: 30),

              // Baris Ketiga
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Container(
                      width: 65,
                      height: 65,
                      decoration: BoxDecoration(
                        color: Colors.deepOrange.shade50,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(
                        Icons.payment,
                        color: Colors.deepOrange.shade700,
                        size: 40,
                      )
                    ),
                    const SizedBox(height: 5),
                    SizedBox(
                      width: 75,
                      child: Text(
                        'Bayar Denda',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 65,
                      height: 65,
                      decoration: BoxDecoration(
                        color: Colors.pink.shade50,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(
                        Icons.volunteer_activism,
                        color: Colors.pink.shade700,
                        size: 40,
                      )
                    ),
                    const SizedBox(height: 5),
                    SizedBox(
                      width: 75,
                      child: Text(
                        'Sumbang Buku',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 65,
                      height: 65,
                      decoration: BoxDecoration(
                        color: Colors.cyan.shade50,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(
                        Icons.meeting_room,
                        color: Colors.cyan.shade700,
                        size: 40,
                      )
                    ),
                    const SizedBox(height: 5),
                    SizedBox(
                      width: 75,
                      child: Text(
                        'Booking Ruangan',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 65,
                      height: 65,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(
                        Icons.more_horiz,
                        color: Colors.grey.shade700,
                        size: 40,
                      )
                    ),
                    const SizedBox(height: 5),
                    SizedBox(
                      width: 75,
                      child: Text(
                        'Lainnya',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12),
                      ),
                    )
                  ],
                )
              ],),
            ]
          )
        ),
      ),
    );
  }
}