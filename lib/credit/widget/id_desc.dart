import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:quizz/credit/widget/card_desc.dart'; // Import yang diperlukan
import 'package:quizz/credit/widget/hafiz_desc.dart'; // Import yang diperlukan
import 'package:quizz/credit/widget/ridhwan_desc.dart'; // Import yang diperlukan

class IDDesc extends StatelessWidget { // Mendefinisikan widget IDDesc sebagai StatelessWidget
  final double scale; // Variabel untuk menyesuaikan skala IDDesc
  final String nama; // Variabel untuk menyimpan nama

  const IDDesc({super.key, this.scale = 1, required this.nama}); // Konstruktor untuk widget IDDesc

  @override
  Widget build(BuildContext context) { // Metode untuk membangun tampilan widget
    return Container( // Mengembalikan widget Container sebagai struktur utama
      width: 600 * math.pow(scale, 4).toDouble(), // Mengatur lebar Container dengan skala yang dihitung

      height: 100, // Mengatur tinggi Container
      margin: const EdgeInsets.only(top: 60), // Margin untuk Container
      padding: const EdgeInsets.all(10), // Padding untuk Container
      decoration: const BoxDecoration( // Mendefinisikan dekorasi kontainer
        borderRadius: BorderRadius.all(Radius.circular(20)), // Membuat sudut kontainer menjadi bulat
        color: Colors.black26, // Warna latar belakang kontainer
      ),
      child: Center( // Widget Center untuk menempatkan child di tengah
        child: Column( // Widget Column untuk menyusun children secara vertikal
          mainAxisAlignment: MainAxisAlignment.spaceBetween, // Mengatur ruang kosong di antara children secara vertikal
          children: [ // Daftar widget children
            Text( // Widget Text untuk menampilkan nama
              nama, // Isi teks
              style: const TextStyle( // Gaya teks untuk teks nama
                fontSize: 12, // Ukuran teks
                color: Colors.white, // Warna teks
                fontFamily: 'Poppins', // Font teks
              ),
            ),
            ElevatedButton( // Tombol terangkat untuk menampilkan halaman selengkapnya
              onPressed: () { // Aksi saat tombol ditekan
                if (nama == "Kevin Cahyo Pratama") { // Jika nama adalah Kevin Cahyo Pratama
                  Navigator.push( // Navigator untuk berpindah halaman
                    context,
                    MaterialPageRoute(
                      builder: (context) => Page2(), // Halaman yang akan ditampilkan saat tombol ditekan
                    ),
                  );
                } else if (nama == "Ridhwan Fachrul Arief") { // Jika nama adalah Ridhwan Fachrul Arief
                  Navigator.push( // Navigator untuk berpindah halaman
                    context,
                    MaterialPageRoute(
                      builder: (context) => Page3(), // Halaman yang akan ditampilkan saat tombol ditekan
                    ),
                  );
                } else if (nama == "Hafiz Hamdi") { // Jika nama adalah Hafiz Hamdi
                  Navigator.push( // Navigator untuk berpindah halaman
                    context,
                    MaterialPageRoute(
                      builder: (context) => Page4(), // Halaman yang akan ditampilkan saat tombol ditekan
                    ),
                  );
                }
              },
              child: const Text("Lihat Selengkapnya"), // Teks pada tombol
            )
          ],
        ),
      ),
    );
  }
}
