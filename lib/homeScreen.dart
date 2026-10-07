import 'package:flutter/material.dart';
import 'daftarBukuScreen.dart';
import 'tambahBukuScreen.dart';
import 'profilScreen.dart';
import 'riwayatPinjamScreen.dart';
import 'bukuFavoritScreen.dart';
import 'kategoriBukuScreen.dart';
import 'menuScreen.dart';

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            GridView.count(
              shrinkWrap: true, // Membatasi tinggi grid sesuai kontennya
              physics: const NeverScrollableScrollPhysics(), // Mematikan scroll bawaan grid
              padding: const EdgeInsets.all(16.0),
              crossAxisCount: 2,
              crossAxisSpacing: 16.0,
              mainAxisSpacing: 16.0,
              childAspectRatio: 1.3,
              children: [
                _buildGridItem(
                  context: context,
                  title: 'Daftar Buku',
                  subtitle: 'Lihat koleksi buku yang tersedia',
                  icon: Icons.menu_book_rounded,
                  decorationIcon: Icons.library_books,
                  baseColor: Colors.blue,
                ),
                _buildGridItem(
                  context: context,
                  title: 'Tambah Buku',
                  subtitle: 'Tambahkan data buku baru',
                  icon: Icons.add,
                  decorationIcon: Icons.my_library_add,
                  baseColor: Colors.green,
                ),
                _buildGridItem(
                  context: context,
                  title: 'Riwayat Peminjaman',
                  subtitle: 'Lihat buku yang pernah dipinjam',
                  icon: Icons.access_time_filled,
                  decorationIcon: Icons.calendar_month,
                  baseColor: Colors.orange,
                ),
                _buildGridItem(
                  context: context,
                  title: 'Kategori Buku',
                  subtitle: 'Jelajahi buku berdasarkan kategori',
                  icon: Icons.format_list_bulleted,
                  decorationIcon: Icons.collections_bookmark,
                  baseColor: Colors.deepPurple,
                ),
                _buildGridItem(
                  context: context,
                  title: 'Buku Favorit',
                  subtitle: 'Lihat buku yang disimpan',
                  icon: Icons.favorite,
                  decorationIcon: Icons.favorite_border,
                  baseColor: Colors.redAccent,
                ),
                _buildGridItem(
                  context: context,
                  title: 'Profil Saya',
                  subtitle: 'Lihat dan kelola informasi akun',
                  icon: Icons.person,
                  decorationIcon: Icons.badge,
                  baseColor: Colors.blueAccent,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: SizedBox(
                // width: double.infinity,
                height: 50,
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
                        builder: (context) => const menuScreen()
                      ),
                    );
                  },
                  child: const Text('Menu Aplikasi'),
                ),
              )
            )
          ],
        ),
      ),
    );
  }

  Widget _buildGridItem({
    required BuildContext context,
    required String title,
    required String subtitle,
    required IconData icon,
    required IconData decorationIcon,
    required Color baseColor,
  }) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              switch (title) {
                case 'Daftar Buku':
                  return const daftarBuku();
                case 'Tambah Buku':
                  return const tambahBuku();
                case 'Riwayat Peminjaman':
                  return const riwayatPinjam();
                case 'Kategori Buku':
                  return const kategoriBuku();
                case 'Buku Favorit':
                  return const bukuFavorit();
                case 'Profil Saya':
                  return const profil();
                default:
                  return const homeScreen(); // Fallback
              }
            },
          ),
        );
      },
      borderRadius: BorderRadius.circular(16),
      child: Container(
        decoration: BoxDecoration(
          color: baseColor.withValues(alpha: 0.08), // Warna pastel muda
          borderRadius: BorderRadius.circular(16),
        ),
        padding: const EdgeInsets.all(12.0),
        child: Stack(
          children: [
            // Bagian Ikon, Judul, dan Subjudul di atas
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Ikon lingkaran kecil di kiri atas
                Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: baseColor,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(icon, color: Colors.white, size: 20),
                ),
                const SizedBox(width: 8),
                // Teks Judul dan Subjudul
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          color: Colors.black87,
                        ),
                        maxLines: 2,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        subtitle,
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 10,
                        ),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // Dekorasi Ikon Besar (Pengganti 3D Asset) di kiri bawah
            Positioned(
              bottom: -5,
              left: -5,
              child: Icon(
                decorationIcon,
                size: 65,
                color: baseColor.withValues(alpha: 0.2), // Dibuat transparan agar seperti background
              ),
            ),
            // Tombol Panah (Chevron) di kanan bawah
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.05),
                      blurRadius: 4,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Icon(
                  Icons.chevron_right,
                  color: baseColor,
                  size: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}