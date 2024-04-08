import 'dart:math';

import 'package:quizz/models/quiz_model.dart';

abstract class QuizController {
  List<QuizModel> _quizzes = []; // List untuk menyimpan objek-objek QuizModel

  // Getter untuk mendapatkan daftar quizzes
  List<QuizModel> get quizzes => _quizzes;

  // Setter untuk mengatur daftar quizzes
  set quizzes(List<QuizModel> value) {
    _quizzes = value;
  }

  void delete() {
    _quizzes.clear();
  }

  // Metode untuk mendapatkan jumlah total quiz
  int get totalQuizzes => _quizzes.length;

  // Metode untuk mendapatkan quiz berdasarkan indeks
  QuizModel getQuizAtIndex(int index) {
    if (index >= 0 && index < _quizzes.length) {
      return _quizzes[index];
    } else {
      throw Exception('Index out of bounds');
    }
  }

   Map<dynamic, dynamic> getRandomQuestionsAndOptions();
}

class QuizControllerManager extends QuizController {
  
  @override
  Map<dynamic, dynamic> getRandomQuestionsAndOptions() {
  var count = totalQuizzes;
  final randomQuestions = <dynamic>[];
  final randomOptions = <dynamic>[];
  final random = Random();

  // Jika jumlah pertanyaan melebihi total pertanyaan yang tersedia
  if (count >= _quizzes.length) {
    count = _quizzes.length;
  }

  // Memilih pertanyaan secara acak
  while (randomQuestions.length < count) {
    final randomIndex = random.nextInt(_quizzes.length);
    final selectedQuestion = _quizzes[randomIndex];

    if (!randomQuestions.contains(selectedQuestion)) {
      randomQuestions.add(selectedQuestion);
      randomOptions.add(selectedQuestion.options);
    }
  }

  return Map.fromIterables(randomQuestions, randomOptions);
}
}

// Setter untuk mengisi data ke dalam QuizController
void setData(QuizController quizController) {
  quizController.delete();

  // Pertanyaan 1
  List<OptionsModel> options1 = [
    const OptionsModel(
        text: "Hafizhuddin Zul Fahmi, S.Kom., M.Sc.", isCorrect: false),
    const OptionsModel(
        text: "Dodik Arwin Dermawan, S.ST., S.T., M.T", isCorrect: true),
    const OptionsModel(
        text: "I Gde Agung Sri Sidhimantra, S.Kom., M.Kom.", isCorrect: false),
    const OptionsModel(text: "Prof. Dr. Eko K. Budiardjo", isCorrect: false),
    const OptionsModel(text: "Ir.Joko Widodod", isCorrect: false),
  ];
  QuizModel quiz1 = QuizModel(
      id: 1,
      text: "Siapakah dosen penanggung jawab Manajemen Informatika ?",
      pathAsset: "",
      options: options1);
  quizController.quizzes.add(quiz1);

  // Pertanyaan 2
  List<OptionsModel> options2 = [
    const OptionsModel(
        text: "Hafizhuddin Zul Fahmi, S.Kom., M.Sc.", isCorrect: false),
    const OptionsModel(
        text: "Dodik Arwin Dermawan, S.ST., S.T., M.T", isCorrect: false),
    const OptionsModel(
        text: "I Gde Agung Sri Sidhimantra, S.Kom., M.Kom.", isCorrect: true),
    const OptionsModel(text: "Prof. Dr. Eko K. Budiardjo", isCorrect: false),
    const OptionsModel(
        text: "Andi Iwan Nurhidayat, S.Kom., M.T.", isCorrect: false),
  ];
  QuizModel quiz2 = QuizModel(
      id: 2,
      text:
          "Saya adalah dosen pengajar pem mobile pada sem 4 akt 22, Saya dikenal juga sebagai dosen bagian kemahasiswaan. Siapakah saya ?",
      pathAsset: "assets/images/agung-rmv-bg.png",
      options: options2);
  quizController.quizzes.add(quiz2);

  // Pertanyaan 3
  List<OptionsModel> options3 = [
    const OptionsModel(text: "Teknik", isCorrect: false),
    const OptionsModel(text: "Kedokteran", isCorrect: false),
    const OptionsModel(text: "Teknik Informatika", isCorrect: false),
    const OptionsModel(text: "Vokasi", isCorrect: true),
    const OptionsModel(text: "Olahraga", isCorrect: false),
  ];
  QuizModel quiz3 = QuizModel(
      id: 3,
      text:
          "D4 Manajemen Informatika merupakan sebuah prodi didalam suatu fakultas yang berlogo seperti berikut. Berikut merupakan logo dari sebuah fakultas ?",
      pathAsset: "assets/images/vokasi.jpeg",
      options: options3);
  quizController.quizzes.add(quiz3);

  // Pertanyaan 4
  List<OptionsModel> options4 = [
    const OptionsModel(text: "Gedung Rektorat", isCorrect: true),
    const OptionsModel(text: "Gedung K10", isCorrect: false),
    const OptionsModel(text: "Gedung Asrama", isCorrect: false),
    const OptionsModel(text: "Aula Unesa", isCorrect: false),
    const OptionsModel(text: "Graha Unesa", isCorrect: false),
  ];
  QuizModel quiz4 = QuizModel(
      id: 4,
      text:
          "Gambar berikut menunjukkan tempat ikonik bagi universitas negeri Surabaya. Gedung tersebut dikenal dengan ?",
      pathAsset: "assets/images/rektorat.jpeg",
      options: options4);
  quizController.quizzes.add(quiz4);

  // Pertanyaan 5
  List<OptionsModel> options5 = [
    const OptionsModel(text: "Java", isCorrect: false),
    const OptionsModel(text: "Phyton", isCorrect: true),
    const OptionsModel(text: "C++", isCorrect: false),
    const OptionsModel(text: "R", isCorrect: false),
    const OptionsModel(text: "SS", isCorrect: false),
  ];
  QuizModel quiz5 = QuizModel(
      id: 5,
      text:
          "Hai gaes mungkin ini adalah bahasa pemrograman yang akan kalian gunakan pada awal pembelajaran kali ini. Bahasa yang memiliki gambar seperti ini disebut ?",
      pathAsset: "assets/images/phyton.png",
      options: options5);
  quizController.quizzes.add(quiz5);

  // Pertanyaan 6
  List<OptionsModel> options6 = [
    const OptionsModel(
        text: "Hafizhuddin Zul Fahmi, S.Kom., M.Sc.", isCorrect: false),
    const OptionsModel(
        text: "Dodik Arwin Dermawan, S.ST., S.T., M.T", isCorrect: true),
    const OptionsModel(
        text: "I Gde Agung Sri Sidhimantra, S.Kom., M.Kom.", isCorrect: false),
    const OptionsModel(text: "Prof. Dr. Eko K. Budiardjo", isCorrect: false),
    const OptionsModel(
        text: "Andi Iwan Nurhidayat, S.Kom., M.T.", isCorrect: false),
  ];
  QuizModel quiz6 = QuizModel(
      id: 6,
      text:
          "Kamu sekarang ingin meminta Tanda tangan dari kepala prodi untuk keperluan KRS. Siapakah yang kamu temui jika ingin meminta Tanda Tangan nya ?",
      pathAsset: "",
      options: options6);
  quizController.quizzes.add(quiz6);

  // Pertanyaan 7
  List<OptionsModel> options7 = [
    const OptionsModel(text: "2018", isCorrect: false),
    const OptionsModel(text: "2019", isCorrect: true),
    const OptionsModel(text: "2020", isCorrect: false),
    const OptionsModel(text: "2021", isCorrect: false),
    const OptionsModel(text: "2022", isCorrect: false),
  ];
  QuizModel quiz7 = QuizModel(
      id: 7,
      text: "Kapan Manajemen Informatika pindah dari D3 menjadi D4 ?",
      pathAsset: "",
      options: options7);
  quizController.quizzes.add(quiz7);

  // Pertanyaan 8
  List<OptionsModel> options8 = [
    const OptionsModel(
        text: "Hafizhuddin Zul Fahmi, S.Kom., M.Sc.", isCorrect: false),
    const OptionsModel(
        text: "Dodik Arwin Dermawan, S.ST., S.T., M.T", isCorrect: false),
    const OptionsModel(
        text: "I Gde Agung Sri Sidhimantra, S.Kom., M.Kom.", isCorrect: false),
    const OptionsModel(text: "Prof. Dr. Eko K. Budiardjo", isCorrect: false),
    const OptionsModel(
        text: "Andi Iwan Nurhidayat, S.Kom., M.T.", isCorrect: true),
  ];
  QuizModel quiz8 = QuizModel(
      id: 8, text: "Siapakah saya ?", 
      pathAsset: "assets/images/Andi.jpg",
      options: options8);
  quizController.quizzes.add(quiz8);

  // Pertanyaan 9
  List<OptionsModel> options9 = [
    const OptionsModel(text: "Hitam", isCorrect: false),
    const OptionsModel(text: "Merah", isCorrect: false),
    const OptionsModel(text: "Kuning", isCorrect: false),
    const OptionsModel(text: "Orange", isCorrect: true),
    const OptionsModel(text: "Hijau", isCorrect: false),
  ];
  QuizModel quiz9 = QuizModel(
      id: 9,
      text: "Apa warna iconik dari prodi Manajemen Informatika ?",
      pathAsset: "",
      options: options9);
  quizController.quizzes.add(quiz9);

  // Pertanyaan 10
  List<OptionsModel> options10 = [
    const OptionsModel(text: "Algoritma Pemrograman", isCorrect: false),
    const OptionsModel(text: "Matematika diskrit", isCorrect: false),
    const OptionsModel(text: "Memasak C++", isCorrect: true),
    const OptionsModel(text: "Jaringan Komputer", isCorrect: false),
    const OptionsModel(text: "Pemrograman API", isCorrect: false),
  ];
  QuizModel quiz10 = QuizModel(
      id: 10,
      text: "Berikut Yang bukan mata kuliah D4 Manajemen Informatika adalah ?",
      pathAsset: "",
      options: options10);
  quizController.quizzes.add(quiz10);
}
