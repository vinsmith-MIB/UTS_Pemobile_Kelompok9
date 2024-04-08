import 'package:flutter/material.dart';

class IDCard extends StatelessWidget { // Mendefinisikan widget IDCard sebagai StatelessWidget
  final String gambar; // Variabel untuk menyimpan path gambar
  final double scale; // Variabel untuk menyesuaikan skala IDCard
  const IDCard(this.gambar, {super.key, this.scale = 1}); // Konstruktor untuk widget IDCard

  @override
  Widget build(BuildContext context) { // Metode untuk membangun tampilan widget
    return Container( // Mengembalikan widget Container sebagai struktur utama
      width: 220 * scale, // Mengatur lebar Container sesuai skala

      padding: const EdgeInsets.all(10.0), // Padding untuk kontainer
      decoration: const BoxDecoration( // Mendefinisikan dekorasi kontainer
        borderRadius: BorderRadius.all(Radius.circular(20)), // Membuat sudut kontainer menjadi bulat
        color: Color.fromARGB(185, 73, 72, 72), // Warna latar belakang kontainer dengan opacity
      ),
      child: Stack( // Widget Stack untuk menumpuk child
        children: <Widget>[ // Daftar widget children
          ClipRRect( // Widget ClipRRect untuk memotong gambar menjadi bentuk yang diperlukan
            borderRadius: const BorderRadius.all(Radius.circular(20)), // Membuat sudut gambar menjadi bulat
            child: Image.asset( // Widget Image untuk menampilkan gambar dari asset
              gambar, // Path gambar
              fit: BoxFit.fill, // Mengisi kotak gambar
            ),
          ),
        ],
      ),
    );
  }
}
