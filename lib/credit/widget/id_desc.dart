import 'package:flutter/material.dart';
import 'dart:math' as math;


import 'package:quizz/credit/widget/card_desc.dart';
import 'package:quizz/credit/widget/hafiz_desc.dart';
import 'package:quizz/credit/widget/ridhwan_desc.dart'; // Jika perlu, ganti dengan path yang benar ke file card_desc.dart

class IDDesc extends StatelessWidget {
  final double scale;
  final String nama;

  const IDDesc({super.key, this.scale = 1, required this.nama});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600 * math.pow(scale, 4).toDouble(),
      height: 100,
      margin: const EdgeInsets.only(top: 60),
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.black26, // Tambahkan warna latar belakang
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              nama,
              style: const TextStyle(
                fontSize: 12, 
                color: Colors.white,
                fontFamily: 'Poppins'
                ),
            ),
            ElevatedButton(
              onPressed: () {
                if (nama == "Kevin Cahyo Pratama") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                             Page2()), // Pastikan Page2() adalah halaman yang ingin ditampilkan saat tombol ditekan
                  );
                }
                else if(nama == "Ridhwan Fachrul Arief") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            Page3()), // Pastikan Page2() adalah halaman yang ingin ditampilkan saat tombol ditekan
                  );
                }
                 else if(nama == "Hafiz Hamdi") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            Page4()), // Pastikan Page2() adalah halaman yang ingin ditampilkan saat tombol ditekan
                  );
                }
              },
              child: const Text("Lihat Selengkapnya"),
            )
          ],
        ),
      ),
    );
  }
}
