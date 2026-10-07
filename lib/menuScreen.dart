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
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Column(
            children: [
              // Baris Pertama
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Container(
                      width: 65,
                      height: 65,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 165, 215, 255),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 40,
                      )
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Tambah",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
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