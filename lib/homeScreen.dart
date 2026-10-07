import 'package:flutter/material.dart';
import 'menuScreen.dart';
import 'daftarBukuScreen.dart';
import 'tambahBukuScreen.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 70, // Disesuaikan agar pas dengan profil
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.lightBlueAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Halo, Mahasiswa!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'E-Library Institut Teknologi Nasional',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.blue[50],
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              // Foto Profil di Kanan Atas
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 2),
                ),
                child: const CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person, color: Colors.blue), // Ganti dengan NetworkImage/AssetImage jika ada foto
                ),
              )
            ],
          ),
        ),
        elevation: 0,
        // Menambahkan Search Bar di bagian bawah AppBar
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(80),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 10, 16, 20),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 45,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.search, color: Colors.grey),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            'Cari buku, penulis, atau kategori...',
                            style: TextStyle(color: Colors.grey[400], fontSize: 13),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                // Tombol Filter di kanan search bar
                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Icon(Icons.tune, color: Colors.grey),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const daftarBukuScreen(),
                  ),
                );
              },
              child: Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 234, 242, 255),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.menu_book,
                      size: 40,
                      color: Colors.blue
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Daftar Buku", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                          Text("Lihat koleksi buku yang tersedia" )
                        ]
                      )
                    ),
                    Icon(Icons.arrow_forward_ios, size: 20, color: Colors.grey)
                  ]
                )
              ),
            ),

            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const tambahBukuScreen(),
                  ),
                );
              },
              child: Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 247, 234, 255),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.my_library_add,
                      size: 40,
                      color: const Color.fromARGB(255, 212, 33, 243)
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Tambah Buku", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                          Text("Input data buku baru ke sistem")
                        ]
                      )
                    ),
                    Icon(Icons.arrow_forward_ios, size: 20, color: Colors.grey)
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              height: 50, // Hanya mengatur tinggi, lebar akan menyesuaikan panjang teks
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const menuScreen(),
                    ),
                  );
                },
                child: const Text('Menu'),
              ),
            ),
          ]
        )
      )
    );
  }

  
}