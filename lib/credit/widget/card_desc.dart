import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Page2 extends StatelessWidget {
  final Uri _urlwa = Uri.parse("https://wa.me/+6282154891123");
  final Uri urlemail =
      Uri(scheme: 'mailto', path: "kevincahyo.22051@mhs.unesa.ac.id");
  final Uri _urlgithub = Uri.parse("https://vinsmith-mib.github.io/portofolio_web/");

  Page2({super.key});

  Future<void> _launchInBrowserView(Uri url) async {
    if (!await launchUrl(url, mode: LaunchMode.inAppBrowserView)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white24,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(39, 97, 97, 97),
        title: const Text(
          "Kevin Cahyo Pratama",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    SizedBox(
                      width: 150,
                      height: 200,
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        child: Image.asset(
                          'assets/kevin.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                      margin: const EdgeInsets.only(top: 12),
                      decoration: BoxDecoration(
                          color: Colors.black38,
                          borderRadius: BorderRadius.circular(20)),
                      child: const Text(
                        "Raja Iblis",
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Freehand',
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    color:
                        Colors.black38, // Warna latar belakang yang diinginkan
                    borderRadius: BorderRadius.circular(
                        10), // Membuat sudut menjadi bulat
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "ABOUT ME",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 20,
                          color: Colors.white,
                          
                        ),
                      ),
                      SizedBox(height: 5,),
                      SizedBox(
                        width: 165,
                        child: Text(
                          "Hai,Perkenalkan nama saya adalah Kevin Cahyo Pratama,Saya merupakan seorang mahasiswa dari Universitas Negeri Surabaya.Saya bercita cita menjadi menjadi manusia biasa.Saya juga sangat memiliki ketertarikan yang amat besar pada frasa Pemrograman mobile.",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 11,
                            fontFamily: 'Poppins',
                            color: Colors.white,
                            
                          )
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const Divider(
            color: Colors.white, // Warna garis
            thickness: 1, // Ketebalan garis
            height: 20, // Tinggi garis
            indent: 20, // Indentasi dari sisi kiri
            endIndent: 20, // Indentasi dari sisi kanan
          ),
          SizedBox(
            height: 260,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black12,
                    maximumSize: const Size(300, 200),
                    padding: const EdgeInsets.symmetric(
                        vertical: 18, horizontal: 30),
                  ),
                  onPressed: () {
                    _launchInBrowserView(_urlwa);
                  },
                  child: const Row(
                    mainAxisAlignment:
                        MainAxisAlignment.center, // Memposisikan teks ke tengah
                    children: [
                      Icon(
                        FontAwesomeIcons.whatsapp,
                        color: Colors.white,
                        size: 25,
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: Text(
                          "Whatsapp",
                          textAlign:
                              TextAlign.center, // Menjadikan teks menjadi pusat
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black12,
                    maximumSize: const Size(300, 200),
                    padding: const EdgeInsets.symmetric(
                        vertical: 18, horizontal: 30),
                  ),
                  onPressed: () {
                    launchUrl(urlemail);
                  },
                  child: const Row(
                    mainAxisAlignment:
                        MainAxisAlignment.center, // Memposisikan teks ke tengah
                    children: [
                      Icon(
                        FontAwesomeIcons.envelope,
                        color: Colors.white,
                        size: 30,
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: Text(
                          "Email",
                          textAlign:
                              TextAlign.center, // Menjadikan teks menjadi pusat
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black12,
                    maximumSize: const Size(300, 200),
                    padding: const EdgeInsets.symmetric(
                        vertical: 18, horizontal: 30),
                  ),
                  onPressed: () {
                    _launchInBrowserView(_urlgithub);
                  },
                  child: const Row(
                    mainAxisAlignment:
                        MainAxisAlignment.center, // Memposisikan teks ke tengah
                    children: [
                      Icon(
                        FontAwesomeIcons.idBadge,
                        color: Colors.white,
                        size: 30,
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: Text(
                          "Portofolio",
                          textAlign:
                              TextAlign.center, // Menjadikan teks menjadi pusat
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black12,
              padding: const EdgeInsets.symmetric(vertical:10,horizontal: 28),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              "Kembali",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
