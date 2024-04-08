import 'dart:math';

import 'package:flutter/material.dart';
import 'package:quizz/credit/widget/id_card.dart';
import 'package:quizz/credit/widget/id_desc.dart';

class CreditMainPage extends StatefulWidget {
  const CreditMainPage({super.key}); // Konstruktor untuk CreditMainPage

  @override
  State<CreditMainPage> createState() => _CreditMainPageState(); // Membuat State untuk CreditMainPage
}

class _CreditMainPageState extends State<CreditMainPage> {
  double currentPageValue = 1; // Nilai halaman saat ini untuk PageController
  PageController controller = PageController(initialPage: 1, viewportFraction: 0.6); // Menginisialisasi PageController

  @override
  void initState() { // Menginisialisasi state
    super.initState();
    controller.addListener(() {
      setState(() {
        currentPageValue = controller.page!; // Memperbarui currentPageValue saat halaman berubah
      });
    });
  }

  @override
  Widget build(BuildContext context) { // Membangun antarmuka pengguna (UI)
    List<String> gambar = [ // Daftar path gambar
      "assets/kevin.jpg",
      "assets/ridhwan.jpg",
      "assets/hafiz.jpg"
    ];
    List<String> nama = [ // Daftar nama
      "Kevin Cahyo Pratama",
      "Ridhwan Fachrul Arief",
      "Hafiz Hamdi"
    ];
    return Scaffold( // Widget Scaffold untuk struktur layout dasar
      appBar: AppBar( // AppBar dengan judul
        backgroundColor: Colors.black38, // Warna latar belakang app bar
        title: const Text( // Teks judul
          "Tim Kami", // Teks judul
          style: TextStyle(color: Colors.white), // Gaya teks
        ),
      ),
      body: PageView.builder( // Widget PageView untuk menampilkan halaman
          controller: controller, // Menggunakan controller untuk PageView
          itemCount: gambar.length, // Jumlah total item dalam PageView
          itemBuilder: (context, index) { // Fungsi pembangun untuk setiap halaman
            double difference = index - currentPageValue; // Menghitung perbedaan antara indeks dan currentPageValue
            if (difference < 0) { // Jika perbedaan negatif, membuatnya positif
              difference *= -1;
            }
            difference = min(1, difference); // Mendapatkan nilai minimum antara 1 dan perbedaan
            return Center( // Widget Center untuk mengatur posisi children ke tengah
                child: Column( // Widget Column untuk menyusun children secara vertikal
                    mainAxisAlignment: MainAxisAlignment.center, // Mengatur children ke tengah secara vertikal
                    children: <Widget>[ // Daftar widget children
                  IDCard( // Widget kustom untuk menampilkan kartu identitas
                    gambar[index], // Path gambar untuk kartu identitas
                    scale: 1 - (difference * 0.3), // Faktor skala untuk kartu identitas berdasarkan perbedaan
                  ),
                  IDDesc(scale: 1 - (difference * 0.3), nama: nama[index]), // Widget kustom untuk menampilkan deskripsi berdasarkan perbedaan dan nama
                ]));
          }),
      backgroundColor: Colors.white10, // Warna latar belakang scaffold
    );
  }
}
