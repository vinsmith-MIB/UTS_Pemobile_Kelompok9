import 'package:flutter/material.dart'; // Mengimpor package flutter/material untuk membangun UI Flutter
import 'package:font_awesome_flutter/font_awesome_flutter.dart'; // Mengimpor package font awesome untuk ikon
import 'package:url_launcher/url_launcher.dart'; // Mengimpor package url_launcher untuk membuka tautan

class Page2 extends StatelessWidget { // Mendefinisikan widget Page2 sebagai StatelessWidget
  final Uri _urlwa = Uri.parse("https://wa.me/+6282154891123"); // URI untuk tautan WhatsApp
  final Uri urlemail = Uri(scheme: 'mailto', path: "kevincahyo.22051@mhs.unesa.ac.id"); // URI untuk tautan email
  final Uri _urlgithub = Uri.parse("https://vinsmith-mib.github.io/portofolio_web/"); // URI untuk tautan portofolio

  Page2({super.key}); // Konstruktor untuk widget Page2

  Future<void> _launchInBrowserView(Uri url) async { // Metode untuk membuka tautan dalam browser atau aplikasi
    if (!await launchUrl(url, mode: LaunchMode.inAppBrowserView)) { // Mengecek apakah tautan berhasil dibuka
      throw Exception('Could not launch $url'); // Melemparkan exception jika tautan tidak dapat dibuka
    }
  }

  @override
  Widget build(BuildContext context) { // Metode untuk membangun tampilan widget
    return Scaffold( // Mengembalikan widget Scaffold sebagai struktur utama
      backgroundColor: Colors.white24, // Memberikan warna latar belakang putih dengan opacity
      appBar: AppBar( // AppBar di bagian atas
        backgroundColor: const Color.fromARGB(39, 97, 97, 97), // Warna latar belakang app bar
        title: const Text( // Judul app bar
          "Kevin Cahyo Pratama", // Judul app bar
          style: TextStyle( // Gaya teks untuk judul
            color: Colors.white, // Warna teks putih
          ),
        ),
      ),
      
      body: Column( // Body widget berisi kolom
        mainAxisAlignment: MainAxisAlignment.spaceAround, // Mengatur ruang kosong di antara children secara vertikal
        crossAxisAlignment: CrossAxisAlignment.center, // Mengatur children untuk berada di tengah secara horizontal
        children: [ // Daftar widget children
          Center( // Widget Center untuk mengatur posisi children ke tengah
            child: Row( // Widget Row untuk menyusun children secara horizontal
              mainAxisAlignment: MainAxisAlignment.spaceAround, // Mengatur ruang kosong di antara children secara horizontal
              crossAxisAlignment: CrossAxisAlignment.start, // Mengatur children untuk dimulai dari atas
              children: [ // Daftar widget children
                Column( // Widget Column untuk menyusun children secara vertikal
                  children: [ // Daftar widget children
                    SizedBox( // Widget SizedBox untuk memberikan ukuran tetap pada child
                      width: 150, // Lebar gambar
                      height: 200, // Tinggi gambar
                      child: ClipRRect( // Widget ClipRRect untuk memotong gambar menjadi bentuk yang diperlukan
                        borderRadius: const BorderRadius.all(Radius.circular(10)), // Membuat sudut gambar menjadi bulat
                        child: Image.asset( // Widget Image untuk menampilkan gambar dari asset
                          'assets/kevin.jpg', // Path gambar
                          fit: BoxFit.fill, // Mengisi kotak gambar
                        ),
                      ),
                    ),
                    Container( // Widget Container untuk mengatur tampilan teks di sekitar gambar
                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30), // Padding untuk kontainer
                      margin: const EdgeInsets.only(top: 12), // Margin untuk kontainer
                      decoration: BoxDecoration( // Mendefinisikan dekorasi kontainer
                          color: Colors.black38, // Warna latar belakang kontainer
                          borderRadius: BorderRadius.circular(20)), // Membuat sudut kontainer menjadi bulat
                      child: const Text( // Teks di dalam kontainer
                        "Raja Iblis", // Teks yang ditampilkan
                        style: TextStyle( // Gaya teks untuk teks di dalam kontainer
                          fontSize: 14, // Ukuran teks
                          fontFamily: 'Freehand', // Jenis huruf teks
                          color: Colors.white, // Warna teks
                        ),
                      ),
                    ),
                  ],
                ),
                Container( // Widget Container untuk mengatur tampilan teks deskripsi
                  decoration: BoxDecoration( // Mendefinisikan dekorasi kontainer
                    color: Colors.black38, // Warna latar belakang kontainer
                    borderRadius: BorderRadius.circular(10), // Membuat sudut kontainer menjadi bulat
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16), // Padding untuk kontainer
                  child: const Column( // Widget Column untuk menyusun children secara vertikal
                    crossAxisAlignment: CrossAxisAlignment.center, // Mengatur children untuk berada di tengah secara horizontal
                    children: [ // Daftar widget children
                      Text( // Widget Text untuk menampilkan teks judul "ABOUT ME"
                        "ABOUT ME", // Teks yang ditampilkan
                        textAlign: TextAlign.center, // Mengatur teks ke tengah secara horizontal
                        style: TextStyle( // Gaya teks untuk teks judul
                          fontFamily: 'Poppins', // Jenis huruf teks
                          fontSize: 20, // Ukuran teks
                          color: Colors.white, // Warna teks
                          
                        ),
                      ),
                      SizedBox(height: 5,), // Spasi antara judul dan deskripsi
                      SizedBox( // Widget SizedBox untuk memberikan ukuran tetap pada child
                        width: 165, // Lebar teks deskripsi
                        child: Text( // Widget Text untuk menampilkan teks deskripsi
                          "Hai,Perkenalkan nama saya adalah Kevin Cahyo Pratama,Saya merupakan seorang mahasiswa dari Universitas Negeri Surabaya.Saya bercita cita menjadi menjadi manusia biasa.Saya juga sangat memiliki ketertarikan yang amat besar pada frasa Pemrograman mobile.",
                          textAlign: TextAlign.start, // Mengatur teks untuk mulai dari kiri
                          style: TextStyle( // Gaya teks untuk teks deskripsi
                            fontSize: 11, // Ukuran teks
                            fontFamily: 'Poppins', // Jenis huruf teks
                            color: Colors.white, // Warna teks
                            
                          )
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const Divider( // Garis pembatas antara bagian atas dan bawah
            color: Colors.white, // Warna garis
            thickness: 1, // Ketebalan garis
            height: 20, // Tinggi garis
            indent: 20, // Indentasi dari sisi kiri
            endIndent: 20, // Indentasi dari sisi kanan
          ),
          SizedBox( // Widget SizedBox untuk memberikan ukuran tetap pada child
            height: 260, // Tinggi SizedBox
            child: Column( // Widget Column untuk menyusun children secara vertikal
              mainAxisAlignment: MainAxisAlignment.spaceAround, // Mengatur ruang kosong di antara children secara vertikal
              children: [ // Daftar widget children
                ElevatedButton( // Tombol terangkat untuk tautan WhatsApp
                  style: ElevatedButton.styleFrom( // Mengatur gaya tombol terangkat
                    backgroundColor: Colors.black12, // Warna latar belakang tombol
                    maximumSize: const Size(300, 200), // Ukuran maksimum tombol
                    padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 30), // Padding untuk tombol
                  ),
                  onPressed: () { // Aksi saat tombol ditekan
                    _launchInBrowserView(_urlwa); // Memanggil metode untuk membuka tautan WhatsApp
                  },
                  child: const Row( // Baris untuk menampilkan ikon dan teks pada tombol
                    mainAxisAlignment: MainAxisAlignment.center, // Mengatur posisi ikon dan teks ke tengah
                    children: [ // Daftar widget children
                      Icon( // Widget Icon untuk menampilkan ikon WhatsApp
                        FontAwesomeIcons.whatsapp, // Ikon WhatsApp
                        color: Colors.white, // Warna ikon putih
                        size: 25, // Ukuran ikon
                      ),
                      SizedBox(width: 20), // Spasi antara ikon dan teks
                      Expanded( // Widget Expanded untuk mengisi ruang kosong yang tersedia
                        child: Text( // Widget Text untuk menampilkan teks "WhatsApp"
                          "Whatsapp", // Teks yang ditampilkan
                          textAlign: TextAlign.center, // Mengatur teks ke tengah secara horizontal
                          style: TextStyle(fontSize: 20, color: Colors.white), // Gaya teks untuk teks tombol
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton( // Tombol terangkat untuk tautan Email
                  style: ElevatedButton.styleFrom( // Mengatur gaya tombol terangkat
                    backgroundColor: Colors.black12, // Warna latar belakang tombol
                    maximumSize: const Size(300, 200), // Ukuran maksimum tombol
                    padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 30), // Padding untuk tombol
                  ),
                  onPressed: () { // Aksi saat tombol ditekan
                    launchUrl(urlemail); // Memanggil fungsi untuk membuka tautan Email
                  },
                  child: const Row( // Baris untuk menampilkan ikon dan teks pada tombol
                    mainAxisAlignment: MainAxisAlignment.center, // Mengatur posisi ikon dan teks ke tengah
                    children: [ // Daftar widget children
                      Icon( // Widget Icon untuk menampilkan ikon Email
                        FontAwesomeIcons.envelope, // Ikon Email
                        color: Colors.white, // Warna ikon putih
                        size: 30, // Ukuran ikon
                      ),
                      SizedBox(width: 20), // Spasi antara ikon dan teks
                      Expanded( // Widget Expanded untuk mengisi ruang kosong yang tersedia
                        child: Text( // Widget Text untuk menampilkan teks "Email"
                          "Email", // Teks yang ditampilkan
                          textAlign: TextAlign.center, // Mengatur teks ke tengah secara horizontal
                          style: TextStyle(fontSize: 20, color: Colors.white), // Gaya teks untuk teks tombol
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton( // Tombol terangkat untuk tautan Portofolio
                  style: ElevatedButton.styleFrom( // Mengatur gaya tombol terangkat
                    backgroundColor: Colors.black12, // Warna latar belakang tombol
                    maximumSize: const Size(300, 200), // Ukuran maksimum tombol
                    padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 30), // Padding untuk tombol
                  ),
                  onPressed: () { // Aksi saat tombol ditekan
                    _launchInBrowserView(_urlgithub); // Memanggil metode untuk membuka tautan Portofolio
                  },
                  child: const Row( // Baris untuk menampilkan ikon dan teks pada tombol
                    mainAxisAlignment: MainAxisAlignment.center, // Mengatur posisi ikon dan teks ke tengah
                    children: [ // Daftar widget children
                      Icon( // Widget Icon untuk menampilkan ikon Portofolio
                        FontAwesomeIcons.idBadge, // Ikon Portofolio
                        color: Colors.white, // Warna ikon putih
                        size: 30, // Ukuran ikon
                      ),
                      SizedBox(width: 20), // Spasi antara ikon dan teks
                      Expanded( // Widget Expanded untuk mengisi ruang kosong yang tersedia
                        child: Text( // Widget Text untuk menampilkan teks "Portofolio"
                          "Portofolio", // Teks yang ditampilkan
                          textAlign: TextAlign.center, // Mengatur teks ke tengah secara horizontal
                          style: TextStyle(fontSize: 20, color: Colors.white), // Gaya teks untuk teks tombol
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          ElevatedButton( // Tombol terangkat untuk kembali ke layar sebelumnya
            style: ElevatedButton.styleFrom( // Mengatur gaya tombol terangkat
              backgroundColor: Colors.black12, // Warna latar belakang tombol
              padding: const EdgeInsets.symmetric(vertical:10,horizontal: 28), // Padding untuk tombol
            ),
            onPressed: () { // Aksi saat tombol ditekan
              Navigator.pop(context); // Memanggil Navigator untuk kembali ke layar sebelumnya
            },
            child: const Text( // Widget Text untuk menampilkan teks "Kembali"
              "Kembali", // Teks yang ditampilkan
              style: TextStyle(color: Colors.white, fontSize: 20), // Gaya teks untuk teks tombol
            ),
          ),
        ],
      ),
    );
  }
}
